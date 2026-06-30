---
layout: default
title: Finance/CFD Pivot — Implementation Steps
---

# Finance/CFD Pivot — Implementation Steps

**Companion to:** [`finance-cfd-pivot-plan.md`](./finance-cfd-pivot-plan.md) — this doc is the executable playbook; that doc is the design rationale. Read the plan first; this doc assumes you understand *why* each step exists.

**Status: not started.** Each step below has a checkbox — mark it `[x]` when done and record the verification result.

## Conventions

- **Working directory**: `/Volumes/WD_mini_2TB/git_repo/Horizon` (dev machine) unless a step says "on the Pi."
- **Git policy** (per `AGENTS.md`): push only to `origin dev`, never to `upstream`, never create PRs. Sync from upstream before starting: `git fetch upstream && git merge upstream/main`.
- **No linter/formatter** is configured — don't run ruff/black/mypy. Verify with `uv run pytest` only.
- **Config lives at `data/config.json`** (gitignored). Edit the Pi's copy for production; edit a local copy for dev testing. `data/config.example.json` is the reference template — update it only when adding new config fields that should be documented.
- **Verify after every step** that touches `src/`: `uv run pytest` (full suite) or `uv run pytest tests/<specific>` (targeted). The suite is the safety net — don't skip it.
- **Effort estimates** are rough, assuming the plan's design holds. `S` = <1h, `M` = half-day, `L` = 1-2 days.

---

## Step 0 — Privacy & output migration (do first, before any pivot work)

**Goal**: stop public exposure of the repo and output before the CFD-specific work lands. Independent of the pivot — safe to do even if the pivot is later abandoned.

**Why first**: any CFD-specific config or prompt changes committed during steps 1-8 would be publicly readable if the repo is still public. Close the exposure before writing finance-specific code.

- [ ] **0.1** Make the repo private: GitHub repo Settings → General → Danger Zone → Change visibility → Private. Free on GitHub Free, immediate. Verify via `gh repo view David-Zeng/Horizon --json visibility` returns `"PRIVATE"`.
- [ ] **0.2** Disable the `deploy-docs.yml` workflow: GitHub repo Settings → Actions → disable `deploy-docs.yml`, or delete `.github/workflows/deploy-docs.yml`. Either stops new gh-pages pushes from CI.
- [ ] **0.3** Stop `pi-deploy.sh` from pushing to gh-pages in the cron invocation. SSH to the Pi (`ssh pi@10.1.1.148`), inspect the cron entry (`crontab -l`), and comment out or remove the `pi-deploy.sh` call. Leave the `docker compose run horizon` call intact — the pipeline still runs, just doesn't deploy.
- [ ] **0.4** Add a `docs/_posts/` cleanup cron entry on the Pi (the orchestrator still writes there via bind mount; without the gh-pages push, files accumulate). Example: `find /home/pi/git_repo/Horizon/docs/_posts -name "*.md" -mtime +30 -delete` daily. Adjust retention to taste.
- [ ] **0.5** Design a Teams webhook `request_body` template. The Feishu template in `config.example.json:148-179` won't render on Teams. Start with the minimal form:
  ```json
  {"text": "#{summary}", "summary": "#{message_title}", "themeColor": "0078D7"}
  ```
  Test it with `uv run horizon-webhook --dry-run` first (preview the payload), then a real send to a test Teams channel.
- [ ] **0.6** Add the Teams webhook URL to the Pi's `.env` as a new env var (e.g. `TEAMS_WEBHOOK_URL`). Configure `WebhookConfig` in the Pi's `data/config.json`: `platform: "generic"`, `url_env: "TEAMS_WEBHOOK_URL"`, `request_body: <the template from 0.5>`.
- [ ] **0.7** Optionally enable `EmailConfig` (SMTP) for redundancy. Config fields in `models.py`; example in `config.example.json`.
- [ ] **0.8** Test end-to-end: `uv run horizon-webhook` (on the Pi, or locally against a test config) — confirm the Teams channel receives a rendered payload.
- [ ] **0.9** Verify the old public surface is closed: load `https://david-zeng.github.io/Horizon/` in a logged-out browser — should 404 (Pages disabled) or require GitHub login (repo private).
- [ ] **0.10** Confirm upstream sync still works: `git fetch upstream && git merge upstream/main` (upstream is public, unaffected by origin's visibility). Confirm the Pi's SSH key still authenticates against the now-private `origin`: `ssh -T git@github.com` and a test `git fetch origin`.

**Verify**: repo private, old Pages URL closed, Teams webhook delivers, upstream sync intact, `docs/_posts/` cleanup scheduled.
**Effort**: M (mostly config + a Teams payload design iteration).

---

## Step 1 — Config-only pilot (retarget sources, no code changes)

**Goal**: swap the source mix from AI/tech to AU finance/CFD and confirm the pipeline fetches real items. Run with the *existing* tech-rubric prompts — scores will be wrong, that's expected; this step only verifies fetch volume and source reachability.

**Depends on**: nothing (can run in parallel with step 0).
**Files touched**: `data/config.json` (local dev copy first, then Pi).

- [ ] **1.1** Create a local `data/config.json` from `data/config.example.json` (copy and edit). This is your dev-test config; don't touch the Pi's config until the pilot is validated locally.
- [ ] **1.2** Retarget `sources.gdelt`: set `query` to a compound string covering the topic spread, e.g. `"ASIC CFD OR ASX 200 OR RBA interest rate OR AUD forex OR gold price OR silver price OR oil price WTI Brent"`. (If the compound string is too complex for GDELT's boolean parser, fall back to the highest-value single query — `"ASIC CFD OR RBA interest rate OR gold price"` — and note that step 5.5's `List[GDELTConfig]` change is needed for full coverage.)
- [ ] **1.3** Retarget `sources.google_news`: set `query` to `"CFD trading Australia OR ASIC margin rules OR ASX 200 OR gold silver spot price OR crude oil OPEC"`, `country: "AU"`, `ceid` to AU/en.
- [ ] **1.4** Replace `sources.rss` entries: remove tech feeds (HN-style, ML blogs), add AU financial + commodity RSS feeds. Verify each feed URL returns 200 before adding (curl or browser). Candidate list from the plan:
  - RBA media releases
  - ASIC media releases (if RSS exists — check `https://asic.gov.au/about-asic/news-centre/` for an RSS link; if not, note it for step 5)
  - Investing.com Australia / ForexLive
  - Kitco News (gold/silver)
  - OilPrice.com (crude oil/energy)
  - EIA petroleum status report feed
  - World Gold Council press releases
  - Market Index (ASX wrap)
  - *(Verify each URL at implementation time — RSS endpoints change.)*
- [ ] **1.5** Swap `sources.reddit` subreddits: replace `MachineLearning` etc. with `ASX_Bets`, `AusFinance`, `Forex`, `Gold`, `Silverbugs`, `Commodities`. Set `min_score: 100`, `fetch_limit: 5` for `ASX_Bets`; `min_score: 50` for the others. (Reddit is a tertiary canary — high `min_score` to avoid meme noise burning AI tokens.)
- [ ] **1.6** Disable `sources.hackernews`, `sources.github`, `sources.ossinsight` (set `enabled: false`).
- [ ] **1.7** Leave `sources.openbb.enabled: false` for now (step 6 enables it).
- [ ] **1.8** Optionally retarget `sources.twitter` handles to AU finance commentators / @ASICMedia / @RBAInfo if the Twitter scraper is enabled. Lower priority — skip if Twitter isn't set up.
- [ ] **1.9** Run locally: `uv run horizon --hours 24`. Check:
  - Items fetched (count > 0 for at least GDELT, Google News, RSS)
  - No scraper crashes (check stderr / logs)
  - `docs/_posts/` has a new summary file (scores will be wrong — that's fine, this step is about fetch volume)
- [ ] **1.10** If fetch volume is unexpectedly high (>200 items), note it — the token-cost estimate in the plan assumes ~200-400 items/day; verify the budget holds before proceeding to step 2.
- [ ] **1.11** If GDELT compound query failed or returned low volume, decide whether to proceed with a single query (reduced coverage) or jump to step 5.5 (`List[GDELTConfig]` code change) before continuing.

**Verify**: `uv run horizon --hours 24` completes, produces a summary file, fetch volume is non-trivial (>20 items from the new source mix).
**Effort**: S-M (mostly feed-URL verification; the config edits are quick).

---

## Step 2 — Rewrite `src/ai/prompts.py` scoring rubric

**Goal**: replace the AI/tech scoring rubric with a CFD-relevance rubric. Highest-leverage change for output quality.

**Depends on**: step 1 (need a config that fetches finance items to test against).
**Files touched**: `src/ai/prompts.py`.

- [ ] **2.1** Decide the language question (open question in the plan): is zh output still wanted? If no, enrichment becomes single-language and saves ~50% enrichment tokens. If yes, keep bilingual. Record the decision here: `__`
- [ ] **2.2** Rewrite `CONTENT_ANALYSIS_SYSTEM` (lines 23-60). New rubric scores for:
  - Direct price impact on ASX indices, AUD pairs, or commodity CFDs (rate decisions, earnings surprises, geopolitical shocks) — high
  - Precious metals and energy moves (gold/silver spot swings, central bank gold buying, OPEC+ decisions, EIA inventory surprises) — high, on par with ASX/forex
  - Regulatory changes affecting CFD trading (leverage limits, margin close-out rules, product intervention orders) — high even without general newsworthiness
  - Macro data releases (CPI, employment, GDP) with AU/global relevance — medium-high
  - Broker/platform news (outages, compliance actions, new CFD listings) — medium
  - Generic stock-tip / promotional content — low (preserve existing anti-promotional tier)
- [ ] **2.3** Rewrite `CONTENT_ENRICHMENT_SYSTEM` (lines 102-138): reframe from "technically-minded reader" to "financially-literate reader." Concepts to explain: margin, leverage, basis points, spread, contract for difference, product intervention order. Apply the language decision from 2.1 (drop `*_zh` fields if zh is dropped).
- [ ] **2.4** Rewrite `CONCEPT_EXTRACTION_SYSTEM` (lines 84-88): reframe from "technical concepts" to "financial concepts" (leverage, margin call, basis points, etc.).
- [ ] **2.5** Run `uv run pytest` — confirm no test breaks (tests may assert on prompt content; if so, update the test expectations to match the new rubric).
- [ ] **2.6** Re-run the pipeline on the same window as step 1: `uv run horizon --hours 24`. Compare scores — finance items should now score 6-9, tech items (if any leaked through) should score low.
- [ ] **2.7** Spot-check 5-10 items manually: do the scores match your judgment? If an ASIC product intervention order scores <7, the rubric needs tuning before proceeding.

**Verify**: `uv run pytest` passes; re-run produces finance-appropriate scores (regulatory items ≥7, market-move items ≥6, promotional content ≤3).
**Effort**: M (the rewrite is prompt engineering — iterative tuning likely needed).

---

## Step 3 — Calibrate `ai_score_threshold`

**Goal**: set the filter threshold to match the new rubric's score distribution. The old 6.0/7.0 is invalid — a 7.0 under the CFD rubric is not comparable to a 7.0 under the tech rubric.

**Depends on**: step 2 (need the rewritten rubric to produce scores).
**Files touched**: `data/config.json` (`filtering.ai_score_threshold`).

- [ ] **3.1** Run the pipeline with a deliberately low threshold (e.g. `ai_score_threshold: 0`) to capture the full score distribution: `uv run horizon --hours 24`.
- [ ] **3.2** Extract all item scores from the run output (the summary file or `logs/`). Sort descending. Observe:
  - How many items score ≥6, ≥7, ≥8, ≥9?
  - Where does the score distribution plateau (the natural cutoff between "signal" and "noise")?
  - Target digest size: 10-15 items (the current format). What threshold captures that?
- [ ] **3.3** Set `filtering.ai_score_threshold` to the value that captures the target digest size. Record the rationale: `__`
- [ ] **3.4** Re-run: `uv run horizon --hours 24`. Confirm the digest has ~10-15 items, all finance-relevant, no obvious noise.
- [ ] **3.5** Document the threshold in `data/config.example.json` as a comment or in this doc, so future rubric edits know to recalibrate.

**Verify**: digest size is 10-15 items, all finance-relevant, threshold is documented.
**Effort**: S (one calibration run + judgment call).

---

## Step 4 — Research and wire up paid sources (can stall; does not gate steps 5-8)

**Goal**: add paywalled financial sources (AFR, Platts, etc.) the user is willing to subscribe to, using the Path A → Path B → Path C sequencing from the plan.

**Depends on**: step 2 (the rubric should score paid-source items correctly). **Can stall** — subscription decisions are a human blocker. Steps 5-8 can proceed in parallel; this step only gates *those specific paid sources* in the output.

- [ ] **4.1** Confirm which paid subscriptions you're willing to pay for. Record the list: `__`
- [ ] **4.2** For each candidate, check Path A first (does the publisher offer a real content API?):
  - Search `<publisher> developer API` / `<publisher> content API`
  - If yes: note the endpoint, auth method (key as header/query param), pricing. This needs a small new scraper module (same shape as `gdelt.py`) — add to step 5's work.
- [ ] **4.3** Check Path B next (does the publisher offer key-gated full-text RSS, like LWN?):
  - If yes: add the feed to `sources.rss` in `data/config.json` with `${VAR_NAME}` in the URL, add the key to `.env`. Zero code change.
- [ ] **4.4** Only if A and B both fail, consider Path C (authenticated HTML scraping). **Read the "Legal considerations for Path C scraping" section of the plan first.** Per-publisher ToS review is mandatory before building. If ToS prohibits automated access, accept headline-only RSS instead.
- [ ] **4.5** For any Path A sources identified in 4.2, build a small scraper module (follow `gdelt.py` pattern: `httpx.AsyncClient` GET, map JSON → `ContentItem`, register in `orchestrator.py:247-313` and `models.py`).
- [ ] **4.6** For any Path C sources (after ToS clearance), build the authenticated fetch + BeautifulSoup extraction. Follow the `twitter_playwright.py` cookie pattern for auth. This is the most maintenance-heavy path — only build if the source is high-value and ToS-clear.
- [ ] **4.7** Test each paid source in isolation (temporarily disable other sources, run, confirm the paid source's items appear in the digest).

**Verify**: each paid source contributes items to the digest; Path C sources (if any) have a documented ToS clearance note.
**Effort**: M-L per source (Path A is M, Path C is L and ongoing-maintenance-heavy).

---

## Step 5 — Build `src/scrapers/asic.py` (if RSS is insufficient)

**Goal**: regulatory tracking for ASIC media releases, consultation papers, and enforcement actions — the highest-value category for this digest.

**Depends on**: step 1 (confirm whether ASIC RSS exists). If step 1.4 found usable ASIC RSS, this step is unnecessary — the generic `rss.py` scraper handles it.
**Files touched**: `src/scrapers/asic.py` (new), `src/models.py` (new `ASICConfig`), `src/orchestrator.py` (register scraper), `data/config.json`.

- [ ] **5.1** Confirm ASIC RSS status from step 1.4. If RSS exists and returns useful items, skip to 5.6 (just tune the category tags). If not, proceed.
- [ ] **5.2** Create `src/scrapers/asic.py` following the `gdelt.py` pattern:
  - `class ASICScraper(BaseScraper)`
  - `async def fetch(self, since_utc: datetime) -> list[ContentItem]`
  - `httpx.AsyncClient` GET against ASIC's media releases / consultation pages
  - Guard non-200 / unparseable body → empty list (not a crash)
  - Parse each release: title, url, published date, release type
  - Drop items not strictly after `since_utc`
  - Map to `ContentItem` with `category` set to `asic` / `leverage-rules` / `broker-compliance` based on release type
- [ ] **5.3** Add `ASICConfig` to `src/models.py` (fields: `enabled: bool`, `feed_url: str` or page URL, `category: str`, `fetch_limit: int`). Add `asic: Optional[ASICConfig] = None` to `SourcesConfig`.
- [ ] **5.4** Register `ASICScraper` in `src/orchestrator.py:247-313` (import at top, instantiate in `fetch_all_sources()` if `config.sources.asic and config.sources.asic.enabled`).
- [ ] **5.5** (Conditional — only if step 1.2's GDELT compound query was insufficient) Change `SourcesConfig.gdelt: Optional[GDELTConfig]` → `Optional[List[GDELTConfig]]` (`models.py:317`) and loop over configs in `orchestrator.py:307`. This enables the 7 distinct GDELT queries from the plan's source table as separate fetches with their own category tags.
- [ ] **5.6** Configure `sources.asic` in `data/config.json` (or confirm the RSS-based config from step 1.4 has correct category tags).
- [ ] **5.7** Run `uv run pytest` — add a test for `ASICScraper` (mock the httpx response, assert `ContentItem` mapping). Follow the existing test patterns in `tests/`.
- [ ] **5.8** Run `uv run horizon --hours 24` — confirm ASIC items appear in the digest and score high (≥7 per the rewritten rubric).

**Verify**: `uv run pytest` passes; ASIC items appear in the digest with correct categories and high scores.
**Effort**: M (new scraper + model + registration + test; follows an established pattern).

---

## Step 6 — Extend `src/scrapers/openbb.py` for forex/commodities/economic-calendar

**Goal**: broaden OpenBB beyond equity news to cover forex, commodities, and economic calendar — the instrument classes CFD traders care about.

**Depends on**: step 2 (rubric should score OpenBB items correctly). Also requires the Pi image rebuild (below) for production; can develop locally with `uv sync --extra openbb`.
**Files touched**: `src/scrapers/openbb.py`, `src/models.py`, `pyproject.toml` (optional new extension packages), `Dockerfile.rpi`, `data/config.json`.

- [ ] **6.1** Install OpenBB locally: `uv sync --extra openbb`. Confirm `obb` imports without error.
- [ ] **6.2** Empirically test whether `obb.news.company()` accepts forex/commodity symbols (e.g. `GC=F`, `SI=F`, `CL=F`, `AUDUSD=X`). Record results: `__`. If yes, the existing call path may suffice with config changes only. If no, proceed to add new endpoint calls.
- [ ] **6.3** Add thin wrapper methods to `src/scrapers/openbb.py` mirroring `_fetch_watchlist`:
  - `_fetch_currency(watchlist, since_utc)` → calls `obb.currency` (forex pairs)
  - `_fetch_commodity(watchlist, since_utc)` → calls `obb.commodity` (gold, silver, oil futures)
  - `_fetch_calendar(watchlist, since_utc)` → calls `obb.economy.calendar` (RBA + macro events)
  - Each wrapped in `asyncio.to_thread` (same as the existing `:123-128` pattern)
  - Each needs its own `_raw_to_item`-style mapper (OpenBB returns different result shapes per endpoint)
- [ ] **6.4** Extend `OpenBBConfig`/`OpenBBWatchlist` in `src/models.py` to support non-equity instrument identifiers. Add a `watchlist_type: str = "equity"` field (values: `equity`, `forex`, `commodity`, `calendar`) that controls which `_fetch_*` method is called.
- [ ] **6.5** Update the `fetch()` loop in `openbb.py` to dispatch to the right `_fetch_*` method based on `watchlist.watchlist_type`.
- [ ] **6.6** Add any required OpenBB extension packages to `pyproject.toml`'s `[openbb]` extra (currently only `openbb` + `openbb-benzinga`). Check OpenBB docs for which extensions provide `obb.currency`/`obb.commodity`/`obb.economy.calendar`.
- [ ] **6.7** Run `uv run pytest` — add tests for the new `_fetch_*` methods (mock the OpenBB SDK calls).
- [ ] **6.8** Configure forex/commodity/calendar watchlists in `data/config.json` (local first, then Pi).
- [ ] **6.9** Run `uv run horizon --hours 24` locally — confirm forex/commodity/calendar items appear.
- [ ] **6.10** Rebuild the Pi image: edit `Dockerfile.rpi:11` to `RUN uv sync --frozen --no-dev --extra openbb`. Rebuild: `docker compose -f docker-compose.rpi.yml build` (on the Pi or via `scripts/run-and-deploy.sh`).
- [ ] **6.11** Add the OpenBB provider API key to the Pi's `.env` (env var name must match what OpenBB expects for the chosen provider — yfinance needs no key, FMP/Benzinga/Polygon do).
- [ ] **6.12** Flip `sources.openbb.enabled: true` in the Pi's `data/config.json`, define watchlists.
- [ ] **6.13** Manual test on the Pi: `docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24`. Check `docs/_posts` and `logs/cron.log` for OpenBB items or warnings.
- [ ] **6.14** Confirm the next cron run picks up the rebuilt image automatically (no cron change needed per the plan).

**Verify**: `uv run pytest` passes; forex/commodity/calendar items appear in the digest; Pi image rebuilt and cron run succeeds.
**Effort**: L (new endpoint wrappers + mappers + config model changes + Pi image rebuild + provider key setup).

---

## Step 7 — Polymarket alt-data scraper (snapshots-only v1)

**Goal**: add prediction-market odds as alt-data context. v1 is snapshots-only (current odds at fetch time); delta detection is deferred to v2.

**Depends on**: steps 2 and 3 (rubric and threshold must handle prediction-snapshot items correctly). Can be skipped if alt-data isn't a priority.
**Files touched**: `src/scrapers/polymarket.py` (new), `src/models.py` (new `PolymarketConfig`), `src/orchestrator.py`, `src/ai/prompts.py` (scoring rubric update for snapshot items), `data/config.json`.

- [ ] **7.1** Verify Polymarket's Gamma API (market metadata) and CLOB API (live prices) are accessible without a key: curl the endpoints, confirm JSON returns. Record the endpoints: `__`
- [ ] **7.2** Create `src/scrapers/polymarket.py` following the `gdelt.py` shape:
  - `class PolymarketScraper(BaseScraper)`
  - `httpx.AsyncClient` GET against the Gamma API (market metadata + descriptions + categories)
  - Optionally a second call to the CLOB API for live order-book prices (implied probability)
  - Map each market to a `ContentItem`: `title` = market question, `content` = current odds/volume/recent movement, `published_at` = fetch time, `metadata` = `{probability, volume_24h, price_change, item_kind: "prediction-snapshot"}`
  - Filter to CFD-relevant markets (RBA rate decisions, inflation prints, geopolitical events that move forex/commodities) — either by category tag or an AI-assisted filter
- [ ] **7.3** Add `PolymarketConfig` to `src/models.py` (fields: `enabled: bool`, `categories: List[str]` or `query: str`, `fetch_limit: int`). Add to `SourcesConfig`.
- [ ] **7.4** Register `PolymarketScraper` in `src/orchestrator.py:247-313`.
- [ ] **7.5** Update `CONTENT_ANALYSIS_SYSTEM` in `src/ai/prompts.py` to score prediction-snapshot items: "AUD rate-cut odds moved from 40% to 65% overnight" is high-signal, distinct from a news article about the same event.
- [ ] **7.6** Exclude Polymarket items from AI topic-dedup: tag with `metadata["item_kind"]: "prediction-snapshot"` and add a check in the dedup step (`orchestrator.py:433-504`) to skip items with this tag, OR update the dedup prompt to treat prediction-snapshots as non-duplicate with news about the same event.
- [ ] **7.7** Run `uv run pytest` — add a test for `PolymarketScraper` (mock the API response, assert `ContentItem` mapping and metadata).
- [ ] **7.8** Configure `sources.polymarket` in `data/config.json`.
- [ ] **7.9** Run `uv run horizon --hours 24` — confirm Polymarket items appear, score appropriately, and aren't falsely deduped against news items about the same event.

**Verify**: `uv run pytest` passes; Polymarket items appear with correct metadata, score appropriately, survive dedup.
**Effort**: M (new scraper + model + rubric tweak + dedup exclusion; the API is public and keyless).

---

## Step 8 — Patch `src/setup/wizard.py` (optional)

**Goal**: make `horizon-wizard` support finance setup end-to-end. Only needed if you use the interactive wizard; skip if you hand-edit `config.json`.

**Depends on**: steps 5-7 (the wizard should know about new source types).
**Files touched**: `src/setup/wizard.py`.

- [ ] **8.1** Add `elif` branches to `build_config()` (`wizard.py:191-291`) for `openbb`, `ossinsight`, `gdelt`, `google_news`, `asic`, `polymarket`. Each branch prompts for the source-specific config fields and adds them to the `Config` being built.
- [ ] **8.2** Run `uv run pytest` — update any wizard tests to cover the new branches.
- [ ] **8.3** Run `uv run horizon-wizard` interactively — confirm the new source types appear and produce valid config.

**Verify**: `uv run pytest` passes; `horizon-wizard` generates a valid finance config including all new source types.
**Effort**: S-M (mechanical addition of elif branches; no design decisions).

---

## Step 9 — Ad-hoc research agent extension (build after the core pivot is stable)

**Goal**: extend the pipeline to support ad-hoc research questions (dynamic topic, not fixed CFD config). See the "Extension: ad-hoc research agent" section of the plan.

**Depends on**: step 2 (parameterized rubric is the prerequisite). Benefits from step 6 (OpenBB extension) for financial-research questions. Build only after steps 1-8 are stable in production.
**Files touched**: `src/ai/prompts.py` (new planner + research-scoring prompts), `src/research/` (new module), `src/mcp/server.py` (new `hz_research` tool), `pyproject.toml` (new `horizon-research` entry point), `src/orchestrator.py` (accept override parameters).

- [ ] **9.1** Decide the two open questions from the plan: single-call vs iterative planner? Financial-only vs general-purpose scope? Record: `__`
- [ ] **9.2** Add `RESEARCH_PLANNER_SYSTEM`/`RESEARCH_PLANNER_USER` prompt constants to `src/ai/prompts.py`. The planner takes a research question and outputs JSON: `{scrapers: [...], queries: {gdelt: "...", google_news: "..."}, window_hours: N, rubric_context: "...", target_item_count: N}`.
- [ ] **9.3** Add `RESEARCH_SCORING_SYSTEM` prompt constant — scores "relevance to THIS specific question" (takes the question as a parameter) rather than the fixed CFD rubric.
- [ ] **9.4** Add `RESEARCH_SUMMARY_SYSTEM` prompt constant — frames output as an answer-with-citations (synthesis section that directly answers the question using enriched items as evidence) rather than a neutral digest.
- [ ] **9.5** Create `src/research/` module with a `ResearchAgent` class:
  - Constructor takes `AIClient` (same pattern as `ContentAnalyzer`/`ContentEnricher`)
  - `async def research(self, question: str) -> ResearchResult`: calls the planner, then orchestrates the staged pipeline with the plan's parameters
  - Reuses `HorizonOrchestrator`'s fetch/score/enrich/summarize methods, passing override parameters
- [ ] **9.6** Add parameterized scraper invocation to `HorizonOrchestrator.fetch_all_sources()` — accept optional override parameters (queries, time window) that flow through to the scrapers, falling back to config when not provided. (Path A from the plan — cleanest and most reusable.)
- [ ] **9.7** Add `hz_research` MCP tool to `src/mcp/server.py` (alongside the existing `hz_*` tools): takes a `question` parameter, calls `ResearchAgent.research()`, returns the research brief. Persist the run via `StorageManager` in a research namespace so `hz_list_runs`/`hz_get_run_*` work on it.
- [ ] **9.8** Add `horizon-research` CLI entry point to `pyproject.toml`'s `[project.scripts]`: `horizon-research = "src.research.cli:main"`. Create `src/research/cli.py` mirroring `src/services/webhook_cli.py:main` pattern (argparse, calls `ResearchAgent`, prints or saves the brief).
- [ ] **9.9** Run `uv run pytest` — add tests for `ResearchAgent` (mock the planner AI call, mock the scraper fetches, assert the pipeline produces a research brief).
- [ ] **9.10** Test via MCP: connect an MCP client, call `hz_research` with a test question (e.g. "Summarize the last week of RBA rate-decision commentary and market reaction"). Confirm the brief is grounded in fetched items, not hallucinated.
- [ ] **9.11** Test via CLI: `uv run horizon-research "Summarize the last week of RBA rate-decision commentary and market reaction"`. Confirm output.
- [ ] **9.12** Test a non-financial question (e.g. "Summarize the last week of EU AI Act enforcement debate") to confirm the general-purpose path works with GDELT/Google News + DuckDuckGo enrichment alone (no OpenBB needed).

**Verify**: `uv run pytest` passes; `hz_research` and `horizon-research` both produce grounded research briefs for both financial and non-financial questions.
**Effort**: L (new planner + research prompts + ResearchAgent module + MCP tool + CLI + parameterized orchestrator; the biggest single step, but builds entirely on existing primitives).

---

## Post-implementation checklist

- [ ] Full `uv run pytest` passes on `dev` branch.
- [ ] Pi cron run succeeds end-to-end: fetch → score → filter → enrich → summarize → webhook/email delivery.
- [ ] Dead-man's-switch (step 0's healthcheck cron) is in place and tested.
- [ ] `data/config.example.json` updated to document new source types (`asic`, `polymarket`, extended `openbb`).
- [ ] `docs/finance-cfd-pivot-plan.md` status updated from "planning only" to "implemented" with the date.
- [ ] Old AI/tech config backed up somewhere (git history or a branch) in case the pivot is reversed.
- [ ] Token cost observed over a week of production runs matches the plan's estimate (~$0.10-0.15/day at DeepSeek pricing); if not, recalibrate threshold or cap enrichment.

## Dependency graph

```
Step 0 (privacy) ────────────────────────────────────────────────┐
                                                                   │
Step 1 (config pilot) ── Step 2 (prompts) ── Step 3 (calibrate) ──┤
                                              │                    │
                                              ├── Step 4 (paid, can stall)
                                              ├── Step 5 (ASIC scraper)
                                              ├── Step 6 (OpenBB extension)
                                              ├── Step 7 (Polymarket)
                                              └── Step 8 (wizard, optional)
                                                                   │
                                              Step 9 (research agent) ── after 1-8 stable
```

Steps 4-8 can run in parallel after step 3 (they touch different files: step 4 = new paid scrapers, step 5 = `asic.py`, step 6 = `openbb.py` + `Dockerfile.rpi`, step 7 = `polymarket.py`, step 8 = `wizard.py`). Step 9 depends on the core pivot being stable and benefits from step 6 being done.
