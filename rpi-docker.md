# Raspberry Pi Docker Setup

Run Horizon on a Raspberry Pi with ofelia scheduler for daily automated execution.

## Prerequisites

- Raspberry Pi 4 or 5 (RPi 3 works but builds slower)
- Docker and Docker Compose installed
- DeepSeek API key (or any [supported AI provider](configuration.md))

## Setup

```bash
# 1. Clone your fork
git clone https://github.com/David-Zeng/Horizon.git
cd Horizon
git checkout dev

# 2. Create .env with your API key
cp .env.example .env
# Edit .env:
#   DEEPSEEK_API_KEY=sk-your-key-here

# 3. Create data/config.json
cp data/config.example.json data/config.json
```

Edit `data/config.json` — set the `ai` block:

```json
"ai": {
  "provider": "deepseek",
  "model": "deepseek-v4-flash",
  "api_key_env": "DEEPSEEK_API_KEY",
  "temperature": 0.3,
  "max_tokens": 8192,
  "throttle_sec": 0,
  "analysis_concurrency": 1,
  "enrichment_concurrency": 1
}
```

`base_url` defaults to `https://api.deepseek.com` — omit it unless using a proxy.

## Build and Run

```bash
# Build the image
docker compose -f docker-compose.rpi.yml build

# Start (scheduler runs daily at 06:00 Sydney / 20:00 UTC)
docker compose -f docker-compose.rpi.yml up -d

# Manual one-off run
docker compose -f docker-compose.rpi.yml run --rm horizon --hours 48

# View logs
docker compose -f docker-compose.rpi.yml logs -f
```

## What Happens When You Run

```
docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24
```

### Container Launch

- `Dockerfile.rpi` builds a `python:3.11-slim` image with `uv` and all Horizon deps
- `./data` → `/app/data` (config + output persist on host)
- `./.env` → `/app/.env:ro` (secrets mounted read-only)
- `--hours 24` overrides CMD → `uv run horizon --hours 24`
- `--rm` deletes the container after exit (stateless, no cleanup needed)

### Pipeline (2–5 minutes)

```
load_dotenv()     → reads DEEPSEEK_API_KEY from /app/.env
StorageManager    → loads data/config.json (DeepSeek provider, score threshold, sources)
Orchestrator      → runs the full pipeline:
```

| Stage | What It Does |
|-------|-------------|
| **1. Fetch** | All enabled scrapers run in parallel (RSS, HN, Reddit, GitHub, Telegram, Twitter) |
| **2. Dedup** | Cross-source URL dedup + AI-powered topic dedup |
| **3. Score & Filter** | Each item scored by DeepSeek API — only items ≥ threshold (default 6.0) survive |
| **4. Enrich** | DuckDuckGo web search + second DeepSeek pass adds context |
| **5. Summarize** | Markdown output in en + zh → saved to `data/summaries/` |
| **6. Output** | If configured: email, webhook, or GitHub Pages deployment |

### After the Run

- Container exits and is removed (`--rm`)
- `data/summaries/daily-*.md` — your AI-scored briefing
- `data/seen.json` — dedup cache so next run skips repeats
- `data/config.json` and `data/summaries/` survive on the host (volume mount)

### Daily Scheduler Mode

When running `up -d` instead of `run --rm`, ofelia triggers the pipeline daily via cron.
The Horizon container is idled between runs — the scheduler calls `docker start horizon` at
the cron time, the pipeline executes, and the container exits. ofelia detects completion and
waits for the next trigger.

## Scheduling

The compose file includes [ofelia](https://github.com/mcuadros/ofelia), a lightweight cron scheduler. Edit the schedule in `docker-compose.rpi.yml`:

```yaml
labels:
  ofelia.job-run.horizon-daily.schedule: "0 20 * * *"  # cron expression (UTC)
```

## Syncing with Upstream

```bash
git fetch upstream
git merge upstream/main
git push origin dev
```
