# AGENTS.md — Horizon

AI-driven information aggregation: fetch news from RSS, HN, Reddit, Telegram, Twitter, GitHub → AI score/filter/enrich → Markdown briefing → GitHub Pages, email, webhook, MCP.

## Essential Commands

```bash
uv sync                     # Install deps (Python 3.11+)
uv sync --extra dev         # Install dev deps (pytest, pytest-cov)
uv sync --extra openbb      # Install optional OpenBB financial source

uv run horizon              # Run default (24h window)
uv run horizon --hours 48   # Run with custom window
uv run horizon-wizard       # Interactive config setup
uv run horizon-mcp          # Start MCP server over stdio
uv run horizon-webhook      # CLI: test/send webhook notifications

uv run pytest               # Run all tests
uv run pytest tests/test_rss.py  # Run single test file

docker compose run --rm horizon           # Docker: default run
docker compose run --rm horizon --hours 48  # Docker: custom window
```

## Architecture

```
config (data/config.json)
  → fetch (scrapers/ in parallel)
  → dedup (cross-source URL dedup + AI topic dedup)
  → AI score & filter (analyzer.py, score ≥ threshold)
  → enrich (web search via DuckDuckGo + 2nd AI pass)
  → summarize (Markdown, en + zh)
  → output (GitHub Pages, email, webhook, MCP)
```

Entry points (defined in `pyproject.toml` `[project.scripts]`):
- `horizon` → `src.main:main` — CLI runner
- `horizon-mcp` → `src.mcp.server:main` — MCP server (FastMCP, stdio)
- `horizon-wizard` → `src.setup.wizard:main` — interactive setup
- `horizon-webhook` → `src.services.webhook_cli:main` — webhook test CLI

Key modules under `src/`:
- `scrapers/` — 8 sources, all async via `httpx.AsyncClient`, inherit `BaseScraper`
- `ai/` — `AIClient` ABC → Anthropic, OpenAI, Azure, Google, DeepSeek, Doubao, MiniMax, Ollama, Ali (DashScope)
- `models.py` — Pydantic models for Config, ContentItem, all source configs
- `orchestrator.py` — `HorizonOrchestrator.run()` wires the pipeline
- `storage/manager.py` — `StorageManager` handles `data/config.json` and summaries
- `mcp/` — MCP server reuses native pipeline modules, staged execution
- `services/` — email (SMTP/IMAP subscription) and webhook (Feishu, DingTalk, Slack, Discord, etc.)
- `setup/wizard.py` — interactive config generator + preset matching

## Configuration (`data/config.json`)

- Config lives at `data/config.json` — **not in repo root**. `data/config.json` is in `.gitignore`.
- `data/config.example.json` is the reference template. `data/config.github.json` is for CI.
- Any string value supports `${VAR_NAME}` expansion (same convention as RSS feed URLs) — keeps secrets out of JSON so config is safe to share.
- Provide at least one AI provider API key via `.env`.
- `filtering.ai_score_threshold` (default 6.0) controls which items survive the AI filter.
- Twitter source requires `APIFY_TOKEN` env var (Apify actor `altimis~scweet`).

## MCP Server

Start: `uv run horizon-mcp` (stdio transport, FastMCP).

Staged pipeline tools: `hz_fetch_items` → `hz_score_items` → `hz_filter_items` → `hz_enrich_items` → `hz_generate_summary`, or run all: `hz_run_pipeline`. Also: `hz_validate_config`, `hz_list_runs`, `hz_get_run_meta`, `hz_get_run_stage`, `hz_get_run_summary`, `hz_get_metrics`.

The MCP layer does **not** reimplement business logic — it imports from the same `src/` modules the CLI uses.

## Testing, Linting, CI

- **No linter/formatter configured.** No `ruff.toml`, no `pre-commit`, no type checker. Agents should not run ruff/black/mypy on this repo.
- `pytest` only. Config in `pyproject.toml` under `[tool.pytest.ini_options]`.
- `uv sync --extra dev` installs pytest + pytest-cov. The extra is named `dev` (PEP 735 optional-dependencies), not a `[dependency-groups]` entry.
- `tests/conftest.py` adds repo root to sys.path. Tests import `src.*` modules directly.
- CI: `daily-summary.yml` (manual trigger via `workflow_dispatch`, uses `data/config.github.json`, deploys to gh-pages). `deploy-docs.yml` (auto-deploy on push to main when `docs/` changes).

## Key Conventions & Gotchas

- **Async everywhere.** Scrapers, AI clients, and orchestrator are all `async def`. Use `asyncio.run()` to invoke.
- **Content IDs** follow `{source_type}:{subtype}:{native_id}` format — used for dedup and item identity.
- **Data dir** is `data/` relative to working directory. Docker mounts it as a volume. The Dockerfile `WORKDIR` is `/app`.
- **OpenBB** is optional. The scraper no-ops with a warning if the SDK isn't installed. Install with `uv sync --extra openbb` or `uv pip install --only-binary=:all: openbb`.
- **GitHub API** rate limits: 60/hr without token, 5000/hr with `GITHUB_TOKEN`. Set it in `.env` for GitHub scraper.
- **Daily run** cron script is `scripts/daily-run.sh` — pulls latest code, runs horizon, deploys via git worktree to gh-pages.
- **README** is the primary docs source. Additional detail in `docs/configuration.md`, `docs/scrapers.md`, `docs/scoring.md`.

## Raspberry Pi Deployment

Pi-optimized setup for running Horizon on a Raspberry Pi with automatic daily deploy to GitHub Pages.

### Scripts

| Script | Run from | Purpose |
|---|---|---|
| `scripts/run-and-deploy.sh` | Mac | SSH into Pi → run Horizon → deploy (one-shot) |
| `scripts/pi-deploy.sh` | Pi | Deploy `docs/` to `gh-pages` branch via git worktree |
| `scripts/install-cron.sh` | Mac | Install daily cron job on Pi (6 AM Sydney) |

### Pi Setup

```bash
# Copy files to Pi
scp docker-compose.rpi.yml scripts/pi-deploy.sh pi@10.1.1.148:/home/pi/git_repo/Horizon/
scp docs/_config.yml pi@10.1.1.148:/home/pi/git_repo/Horizon/docs/

# On the Pi: set git remote to SSH (required for push)
git remote set-url origin git@github.com:David-Zeng/Horizon.git

# Install daily cron (runs Horizon + deploy at 6 AM Sydney)
./scripts/install-cron.sh
```

### How it works

```
cron (6 AM) → docker compose run horizon --hours 24
                    ↓ (writes summaries to docs/_posts/ via mount)
            → ./scripts/pi-deploy.sh
                    ↓ (git worktree → wipe old _posts/ → copy docs/ → push gh-pages)
            → GitHub Pages rebuilds (~30s)
            → https://david-zeng.github.io/Horizon/
```

### Key details

- **`docker-compose.rpi.yml`** mounts `./docs:/app/docs` so the orchestrator's `docs/_posts/` output persists on disk. Runs container as host user (`UID:GID`).
- **`UV_CACHE_DIR=/tmp/.uv-cache`** — non-root user can't write to default `/.cache/uv`.
- **`pi-deploy.sh`** blocks pushes to upstream (`Thysrael/Horizon`). Set `HORIZON_FORK="David-Zeng/Horizon"` env var to suppress the check prompt.
- **`docs/_config.yml`** — URL must match the fork (not `thysrael.github.io`). Update this after syncing from upstream.
- **Git remote** must use SSH on the Pi — HTTPS lacks credentials for unattended push.
- **`data/` and `docs/`** must be owned by the Pi user if running container as non-root.

## Git Policy

- **Remotes**: `origin` = fork (`David-Zeng/Horizon`), `upstream` = original (`Thysrael/Horizon`)
- **Push only to `origin dev`** — never push to `upstream`, never create PRs
- **Sync from upstream**: `git fetch upstream && git merge upstream/main`
