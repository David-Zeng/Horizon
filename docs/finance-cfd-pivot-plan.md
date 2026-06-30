---
layout: default
title: Finance/CFD Pivot Plan (Sydney Market)
---

Plan: Pivoting Horizon to Sydney CFD Market & Regulatory News

**Status: planning only — nothing in this document has been implemented yet.**

## Goal

Retarget Horizon from AI/tech news aggregation to a daily briefing focused on:

1. **Sydney/ASX-area CFD market news** — price-moving events for CFD-traded instruments (ASX indices, AUD forex pairs, commodities relevant to the Australian market).
2. **Regulatory change tracking** — ASIC (Australian Securities & Investments Commission) CFD rules, leverage caps, margin requirements, broker compliance actions, and related APAC regulatory news (since ASIC CFD rules are closely watched alongside ESMA/FCA precedent).
3. **Broader financial review coverage** — sourced from existing config-driven scrapers plus new sources, including paid/subscription financial outlets where needed for depth.

This document is the result of a codebase investigation (see prior conversation) into what's config-only vs what needs code changes, extended with concrete sourcing and a phased build-out.

## Why this is a pivot, not a fork

Nothing in `src/` hardcodes "AI/tech" at the architecture level — the scrapers, dedup, storage, and output layers are topic-agnostic. The coupling is concentrated in three places:

- `src/ai/prompts.py` — scoring/enrichment rubric text (Python constants, no config override)
- `src/setup/wizard.py` — `build_config()` source-type coverage gap
- `src/scrapers/openbb.py` — financial scraper exists but is equity-news-only

Everything else is config (`data/config.json`) or new scraper modules following the existing `BaseScraper` pattern.

## Target topic model

Three category groups, mapped to `filtering.category_groups` (already a working, generic mechanism per `docs/scoring.md`):

|Group|Categories|Purpose|
|-|-|-|
|`market-moves`|`asx`, `forex-aud`, `commodities-metals`, `commodities-energy`, `indices-cfd`|Price-relevant news for CFD-traded instruments|
|`regulatory`|`asic`, `leverage-rules`, `broker-compliance`|ASIC/regulator actions, rule changes, enforcement|
|`analysis`|`broker-research`, `macro-review`, `financial-press`|Reviews, commentary, macro context|

```mermaid
flowchart LR
    gdelt["GDELT, query retargeted to ASIC, ASX, gold, silver, oil"]
    gnews["Google News, AU finance and commodity queries"]
    rss["RSS, AU financial and commodity feeds"]
    reddit["Reddit, AusFinance, ASX_Bets, Gold, Commodities"]
    openbb["OpenBB, equity news plus forex, commodity, calendar"]
    asicsrc["New ASIC scraper, regulatory releases"]
    paid["Paid sources, AFR, Platts, Metals Focus"]
    scoring["AI scoring, rewritten rubric in prompts.py"]
    marketmoves["Category group, market-moves"]
    regulatory["Category group, regulatory"]
    analysis["Category group, analysis"]
    digest["Daily Markdown digest"]

    gdelt --> scoring
    gnews --> scoring
    rss --> scoring
    reddit --> scoring
    openbb --> scoring
    asicsrc --> scoring
    paid --> scoring
    scoring --> marketmoves
    scoring --> regulatory
    scoring --> analysis
    marketmoves --> digest
    regulatory --> digest
    analysis --> digest

    style gdelt fill:#4a90d9,color:#ffffff
    style gnews fill:#4a90d9,color:#ffffff
    style rss fill:#4a90d9,color:#ffffff
    style reddit fill:#4a90d9,color:#ffffff
    style openbb fill:#4a90d9,color:#ffffff
    style asicsrc fill:#9060c0,color:#ffffff
    style paid fill:#e0a030,color:#212121
    style scoring fill:#50b060,color:#ffffff
    style marketmoves fill:#c05050,color:#ffffff
    style regulatory fill:#c05050,color:#ffffff
    style analysis fill:#c05050,color:#ffffff
    style digest fill:#c05050,color:#ffffff
```

## Source plan

### Reuse as-is (config-only retarget)

|Scraper|Change needed|Notes|
|-|-|-|
|`gdelt`|`query` → `"ASIC CFD"`, `"ASX"`, `"RBA interest rate"`, `"AUD forex"`, `"gold price"`, `"silver price"`, `"oil price WTI Brent"` (run as multiple configured queries if the scraper supports repeated source entries — check `models.py:280` cardinality)|Best existing lever for macro/regulatory event coverage; GDELT indexes global news including AU regulatory press and commodity markets|
|`google_news`|`query` → `"CFD trading Australia"`, `"ASIC margin rules"`, `"ASX 200"`, `"gold silver spot price"`, `"crude oil OPEC"`; `country: "AU"`, `ceid` set to AU/en|Mainstream financial journalism, config-only|
|`rss`|Replace existing tech feeds with AU financial + commodity RSS (see below)|Zero code change — just new feed entries|
|`reddit`|Swap `MachineLearning` etc. for `r/ASX_Bets`, `r/AusFinance`, `r/Forex`, `r/Gold`, `r/Silverbugs`, `r/Commodities`|Caution: signal-to-noise on retail trading subs is lower than tech subs; tune `min_score` up|
|`openbb`|Repoint `watchlists[].symbols` to ASX-listed tickers / AUD pairs / metals-and-energy proxy tickers (e.g. `GC=F`, `SI=F`, `CL=F` if `news.company()` accepts futures symbols) if accepted (needs empirical check — see Gaps)|Still equity-news-shaped; see code changes below for real CFD coverage|
|`twitter`|Swap handles to AU finance commentators/ASIC/RBA accounts, plus commodity-desk analysts, if Twitter scraper is enabled|Optional, lower priority|
|`github`, `hackernews`, `ossinsight`|Disable|No finance angle; HN is structurally tech-biased and can't be retargeted|

### New RSS sources to add (free, config-only)

These are standard AU financial RSS feeds — add as new entries under `sources.rss` in config, no code change:

- ASX market announcements (company announcements platform — check ASX's public feed availability)
- RBA (Reserve Bank of Australia) media releases — rate decisions are the single biggest AUD/ASX CFD driver
- AFR (Australian Financial Review) — markets section RSS (subscription may gate full text, see Paid sources below)
- Investing.com Australia / ForexLive — global FX-focused, config-only addition
- ASIC media releases RSS (regulatory actions, consultation papers, enforcement)

Commodity-specific feeds (gold, silver, oil, and other large-volume CFD-traded merchandise):

- Kitco News — gold/silver/precious metals spot price news and commentary, widely used by metals CFD traders
- World Gold Council press releases — official gold-market data and demand trends
- OilPrice.com — crude oil (WTI/Brent), natural gas, energy-sector CFD-relevant news
- EIA (US Energy Information Administration) — weekly petroleum/inventory reports, a major oil-price catalyst
- LME (London Metal Exchange) news/announcements — base metals (copper, aluminium, nickel) pricing context, relevant to broader commodities-CFD coverage
- Reuters Commodities RSS (if available) / Mining.com — diversified commodity-merchant coverage (mining majors, bulk metals, agri where CFD-relevant)

*(Exact feed URLs need verification at implementation time — RSS endpoints change and some require checking robots.txt/ToS before scraping.)*

### Paid/subscription sources (needs research + possible new integration)

The user flagged that some financial reviews and local news may require payment for full context. Candidates:

- **AFR (Australian Financial Review)** — subscription paywall; RSS may only give headlines/excerpts. Full-text would need either an API (if AFR offers one) or accepting headline-only items.
- **The Australian / Business section** — similar paywall situation.
- **Bloomberg/Reuters terminals or APIs** — enterprise pricing, likely out of scope for a personal aggregator but worth listing as an option if budget allows.
- **Morningstar / IBISWorld** — paid research, relevant for "financial reviews" angle.
- **Metals Focus / CPM Group (precious metals research)** — paid gold/silver supply-demand and price-forecast reports, used by serious metals CFD desks.
- **S&P Global Commodity Insights (Platts)** — paid oil/gas/energy and broader commodity pricing and assessment data, an industry-standard "large merchant" source for energy/commodity CFDs.

For paywalled sources, the codebase already has one reusable integration pattern: the `${VAR_NAME}` config expansion (used today for `LWN_KEY` in `config.example.json:52`) — if a source exposes an API key for full-text RSS, this is a drop-in, no-code path. This needs to be assessed per source once you know which subscriptions you're willing to pay for.

### Beyond financial reviews: other paid-context categories worth considering

Financial-review outlets (AFR, The Australian) are the hardest paid category to integrate well, because they're Path C by default (paywalled prose, no API). The categories below are generally **easier** to wire up — they're data/API-first businesses, so Path A (a real content API) is the common case rather than the exception, and the output is usually structured data the AI can reason over directly rather than HTML that needs extraction.

- **Real-time/historical market data APIs** — e.g. Polygon.io, Twelve Data, Alpha Vantage premium tiers, IG/OANDA market-data APIs. These are exactly the kind of "large amount merchant" data feeds already on the radar via OpenBB's provider system (`OpenBBWatchlist.provider` already supports swapping providers per watchlist — `models.py:225`). A paid tier mainly buys higher rate limits and broader instrument coverage (forex pairs, indices, commodities) rather than a different integration shape — straightforward Path A once `openbb.py` is extended per the earlier `obb.currency`/`obb.commodity` plan.
- **Broker-grade economic calendars** — e.g. Trading Economics, Forex Factory premium, DailyFX calendar API. These directly serve the "regulatory and macro changes" goal (RBA decisions, CPI prints, employment data) with structured event data (time, actual/forecast/previous values, impact rating) rather than prose — arguably higher-value-per-dollar than a news subscription, since `obb.economy.calendar` (already identified as a planned OpenBB extension) may pull from one of these providers depending on which OpenBB provider extension is installed.
- **Regulatory/compliance databases** — e.g. RegTech feeds, LexisNexis regulatory tracking, or ASIC's own paid "Connect" data services (beyond the free media-release RSS already planned). Relevant if the free ASIC media releases prove too sparse or delayed compared to a paid regulatory-monitoring service — worth treating as a fallback/upgrade to the planned `asic.py` scraper rather than a day-one requirement.
- **Alt-data / sentiment feeds** — e.g. Benzinga Pro (already partially in scope — `openbb-benzinga` is pinned in `pyproject.toml:32` as a news provider), StockTwits/social-sentiment APIs, or broker order-flow/positioning data (e.g. IG client sentiment, which several CFD brokers publish free or paid) — useful as a "what are other CFD traders doing" signal layered on top of news, though this is a genuinely new data shape (sentiment scores, not articles) and would need its own `ContentItem.metadata` convention rather than fitting the existing title/url/content shape cleanly.
- **Prediction markets** — see dedicated subsection below.

**Why these are generally a better first paid investment than a news subscription:** all categories above are typically Path A (real API, structured JSON, official rate-limited access) rather than Path C (cookie auth, HTML scraping, ToS risk). They also map directly onto work already planned — the OpenBB extension (`obb.currency`/`obb.commodity`/`obb.economy.calendar`) and the ASIC scraper — rather than requiring a brand-new scraper category. A financial-review subscription, by contrast, is likely to land in Path C and cost more in ongoing scraper maintenance than the subscription itself costs in money.

### Prediction markets (Polymarket and similar) as alt-data

Polymarket is a strong candidate for this pipeline specifically because, unlike most of the paid sources above, it's genuinely **free and keyless** — making it a faster win than anything on the paid list, even though it surfaced in a discussion about paid context.

- **Access**: Polymarket's Gamma API (market metadata, descriptions, categories) and CLOB API (live order-book prices, i.e. the market's implied probability) are both public REST endpoints with no API key required for read access — this is closer to Path A than even the `LWN_KEY` RSS case, since there's no credential-management step at all. A new `src/scrapers/polymarket.py` would follow the `gdelt.py` shape: `httpx.AsyncClient` GET against the public endpoint, map JSON results into `ContentItem`.
- **Why it's relevant to a CFD/macro briefing**: prediction-market odds are a leading indicator for exactly the events this plan already cares about — RBA rate-decision odds, inflation-print outcome odds, election/geopolitical-event odds that move forex and commodities, even odds on specific regulatory actions if a market exists for them. This is a different *kind* of signal than news (a crowd-sourced probability rather than a reported fact), which is genuinely additive rather than duplicating GDELT/Google News coverage.
- **Data shape mismatch to plan for**: a Polymarket market is fundamentally a "current probability for outcome X" snapshot, not a discrete news event with a single `published_at`. Mapping it into `ContentItem` means treating each fetch as a new "item" representing the market's state at fetch time (title = market question, content = current odds/volume/recent movement, `published_at` = fetch time or last-trade time) — similar in spirit to the alt-data sentiment-feed mismatch noted above, and likely wants its own `metadata` convention (e.g. `probability`, `volume_24h`, `price_change`) rather than reusing news-style fields. Worth deciding whether "odds moved significantly" (a delta) is more useful to surface than "current odds" (a snapshot) — the former needs the scraper to persist the previous reading and diff against it, which is new state-tracking the rest of the pipeline doesn't currently do (`StorageManager` tracks seen items for dedup, not numeric time series).
- **Other prediction markets worth the same treatment**: Kalshi (CFTC-regulated, US-based, also has a public API, arguably more relevant for US macro events that move global CFD instruments) and Metaculus (forecasting community, no real-money trading, API-accessible) are structurally similar alt-data candidates if Polymarket proves useful.
- **Scoring rubric implication**: if this is built, the `prompts.py` rewrite (already planned) should explicitly account for probability-snapshot items reading differently from news items — the AI needs to know "AUD rate-cut odds moved from 40% to 65% overnight" is the kind of signal worth a high score, distinct from how it scores a news article.

### Paid-source pipeline in detail: key → fetch → LLM-readable text

The `LWN_KEY` pattern only covers the easy case (a source that takes a key as a URL query param on its own RSS feed). Most paywalled financial sources won't be that simple, so the realistic pipeline has three stages, and which stage a given source needs depends entirely on what it offers.

```mermaid
flowchart TD
    subscribe["Subscribe to the source, obtain credentials, API key or login cookie"]
    storekey["Store credential in the Pi .env file, never commit to git"]
    classify["Classify the source by access type"]
    apipath["Path A, source has a real content API, key passed as header or query param"]
    feedpath["Path B, source has full-text RSS gated by a key, same as LWN_KEY today"]
    htmlpath["Path C, source has no API, only a paywalled webpage behind login"]
    apifetch["httpx call to the API endpoint, key from VAR_NAME expansion or request header"]
    feedfetch["rss.py already handles this, key expands into the feed URL"]
    htmlfetch["New fetch step, authenticated httpx session or stored cookies, GET the article page"]
    extract["Extract readable text from HTML, BeautifulSoup is already a dependency, reused from telegram.py and reddit.py"]
    normalize["Normalize into ContentItem, title, url, content, published_at, category"]
    pipeline["Existing dedup, AI scoring, enrichment pipeline, unchanged"]

    subscribe --> storekey
    storekey --> classify
    classify --> apipath
    classify --> feedpath
    classify --> htmlpath
    apipath --> apifetch
    feedpath --> feedfetch
    htmlpath --> htmlfetch
    apifetch --> normalize
    feedfetch --> normalize
    htmlfetch --> extract
    extract --> normalize
    normalize --> pipeline

    style subscribe fill:#4a90d9,color:#ffffff
    style storekey fill:#4a90d9,color:#ffffff
    style classify fill:#4a90d9,color:#ffffff
    style apipath fill:#e0a030,color:#212121
    style feedpath fill:#50b060,color:#ffffff
    style htmlpath fill:#e0a030,color:#212121
    style apifetch fill:#9060c0,color:#ffffff
    style feedfetch fill:#50b060,color:#ffffff
    style htmlfetch fill:#9060c0,color:#ffffff
    style extract fill:#9060c0,color:#ffffff
    style normalize fill:#c05050,color:#ffffff
    style pipeline fill:#c05050,color:#ffffff
```

Green is what already works unmodified (`rss.py` + `${VAR_NAME}`). Orange/purple are new work, and the amount of new work depends entirely on which path a given paid source falls into:

**Path A — source has a real content API (best case).** Some providers (S&P Global/Platts, Morningstar, certain Bloomberg/Reuters tiers) offer a proper REST API with a key, separate from any RSS feed. This needs a small new scraper module (same shape as `gdelt.py`): `httpx.AsyncClient` call to the API endpoint, key read via `${VAR_NAME}` expansion in a config field or passed as an `Authorization` header (the env var itself stays out of config, same as OpenBB's credential handling). Output is usually already-structured JSON, so the `_raw_to_item` mapping step is straightforward — no HTML parsing needed.

**Path B — source has full-text RSS gated by a key (already solved).** This is the `LWN_KEY` case: the key is a query-string token appended to an otherwise-normal RSS feed URL. `rss.py:69-73` already does this expansion. Zero new code — just add the feed under `sources.rss` with `${VAR_NAME}` in the URL and the key in `.env`. Worth checking each paywalled candidate for this option first, since it's free to implement.

**Path C — source has no API, content sits behind a logged-in webpage (worst case, and the likely reality for AFR/The Australian).** This is the scenario the user is flagging by "use a scraping tool to get context the LLM can read." Concretely:

1. **Authentication** — most paywalled news sites use session cookies, not API keys, for logged-in access. This means either (a) a stored, periodically-refreshed cookie file (the same pattern `twitter_playwright.py` already uses — see `docs/twitter-cookies.md` and `TwitterConfig.cookie_dir`/`cookie_file_pattern` in `models.py`), or (b) a Playwright-driven login flow that signs in with stored credentials and exports cookies, since most paywalls render content client-side or check auth server-side per-request.
2. **Fetching the article page** — once authenticated, fetch the actual article URL (from the free/headline-only RSS or Google News item) with the authenticated session, rather than the public RSS summary.
3. **Extracting readable text from the HTML** — `BeautifulSoup` is already a project dependency (`pyproject.toml:20`, used in `telegram.py:69` and `reddit.py:200,421`), so this is a pattern extension, not a new library. The extraction logic itself (find the article body element, strip ads/nav/related-links cruft) is paywall-specific and brittle — it breaks whenever the site redesigns, which is a real maintenance cost worth being honest about up front.
4. **Mapping into `ContentItem`** the same way every other scraper does — `content` becomes the extracted full text instead of an RSS summary, everything downstream (dedup, scoring, enrichment) is unchanged.

**Worked example — AFR (Australian Financial Review):**

- AFR publishes a free public RSS feed (markets/companies sections) but it almost certainly returns headline + a short teaser, not full article text, for subscriber-only stories — that's the standard paywall RSS pattern.
- Check Path A first: AFR's parent (Nine Entertainment) has not been observed to offer a public developer/content API in this research; this needs an actual check (search "AFR API for developers" / "Nine Entertainment content API") before ruling it out — don't assume Path C without looking.
- Check Path B next: if AFR's RSS accepts a subscriber token as a URL parameter the way LWN does, that's the cheapest win — worth testing with an active subscription before building anything.
- If both come up empty, Path C applies: a personal AFR subscription's session cookie (captured via a one-time Playwright login, following the existing `twitter_playwright.py` cookie pattern) would let a new scraper fetch the full article HTML for URLs already discovered via the free RSS/Google News teaser, then extract the body text with BeautifulSoup.
- Caveat to flag explicitly: AFR's Terms of Use govern automated access to subscriber content distinctly from public pages — this should be read before building Path C for AFR specifically, since "I have a personal subscription" does not automatically mean "scripted scraping of my own paid access is permitted." This is the kind of per-publisher ToS check the sequencing recommendation below calls out.

**Sequencing recommendation:** for each paid source on the candidate list, check Path A then Path B before assuming Path C. Path C should be a last resort — it's the most fragile, the most ToS-sensitive (scraping a logged-in paywalled page is a materially different legal posture than reading public RSS, worth checking each publisher's terms before building), and the most ongoing-maintenance-heavy. It's plausible several "needs research" candidates (Platts, Morningstar, IBISWorld) turn out to be Path A once you actually look at their developer docs, leaving Path C only for outlets that genuinely have no API offering.

### New scraper code needed

- **ASIC regulatory feed** — if ASIC doesn't publish clean RSS, a small new scraper (`src/scrapers/asic.py`) following the `BaseScraper` pattern, similar in shape to `gdelt.py`/`google_news.py`, polling ASIC's media release / consultation pages.
- **OpenBB extension** for true CFD-relevant instrument classes — extend `src/scrapers/openbb.py` to call `obb.currency` (forex), `obb.economy.calendar` (RBA/economic calendar — directly relevant to "regulatory and macro changes"), and `obb.commodity` (gold, silver, oil, and other large-volume merchandise — OpenBB's commodity extension covers precious metals and energy futures pricing/news), alongside the existing `news.company()`. Needs new Pydantic config fields in `models.py` (current `OpenBBConfig`/`OpenBBWatchlist` assume equity-ticker semantics).

### How the OpenBB feed works today (and after extension)

`src/scrapers/openbb.py` wraps the synchronous OpenBB SDK in `asyncio.to_thread` and currently calls exactly one endpoint, `obb.news.company()`, once per configured watchlist. The diagram below shows the current path (solid styling) and the proposed forex/commodity/calendar extension (dashed-equivalent, same node style called out in the label).

```mermaid
flowchart TD
    config["OpenBBConfig, list of watchlists with symbols, provider, category"]
    loop["fetch loops over each enabled watchlist"]
    equitycall["obb.news.company call, existing, equity ticker news"]
    fxcall["obb.currency call, planned extension, forex pairs"]
    commioditycall["obb.commodity call, planned extension, gold silver oil futures"]
    calendarcall["obb.economy.calendar call, planned extension, RBA and macro events"]
    thread["asyncio.to_thread wraps each synchronous SDK call"]
    raw["Raw OpenBB Pydantic result objects"]
    mapper["_raw_to_item maps url, title, body, date, symbols into a ContentItem"]
    dedup["seen_urls set dedupes across watchlists inside one fetch call"]
    pipeline["Items merged into the shared Horizon pipeline, scoring and enrichment"]

    config --> loop
    loop --> equitycall
    loop --> fxcall
    loop --> commioditycall
    loop --> calendarcall
    equitycall --> thread
    fxcall --> thread
    commioditycall --> thread
    calendarcall --> thread
    thread --> raw
    raw --> mapper
    mapper --> dedup
    dedup --> pipeline

    style config fill:#4a90d9,color:#ffffff
    style loop fill:#4a90d9,color:#ffffff
    style equitycall fill:#50b060,color:#ffffff
    style fxcall fill:#e0a030,color:#212121
    style commioditycall fill:#e0a030,color:#212121
    style calendarcall fill:#e0a030,color:#212121
    style thread fill:#9060c0,color:#ffffff
    style raw fill:#9060c0,color:#ffffff
    style mapper fill:#9060c0,color:#ffffff
    style dedup fill:#9060c0,color:#ffffff
    style pipeline fill:#c05050,color:#ffffff
```

Green is the call that exists in the code today. Orange are the planned additions — each needs its own thin wrapper method (mirroring `_fetch_watchlist`) plus a new `_raw_to_item`-style mapper, since the OpenBB SDK returns different result shapes per endpoint. Provider credentials (FMP, Benzinga, Polygon, etc.) are read by the OpenBB SDK from its own environment/settings, not passed through Horizon config.

### How the planned ASIC regulatory feed would work

No code exists yet. The proposed shape mirrors `gdelt.py` (a stateless poll-and-map scraper) rather than `openbb.py` (an SDK wrapper), since ASIC is just another HTTP source.

```mermaid
flowchart TD
    config["ASICConfig, new model in models.py, holds feed url and category"]
    check["fetch checks config.enabled, returns empty list if off"]
    request["httpx GET against ASIC media releases or consultation RSS or JSON endpoint"]
    guard["Response guarded the GDELT way, non-200 or unparseable body yields empty list, not a crash"]
    parse["Parse each release into title, url, published date, release type"]
    filtersince["Drop items not strictly after the since timestamp"]
    mapper["Map into ContentItem, category set to asic or leverage-rules or broker-compliance"]
    pipeline["Items merged into the shared Horizon pipeline, scoring and enrichment"]
    rubric["Rewritten scoring rubric weights regulatory items highly even without general newsworthiness"]

    config --> check
    check --> request
    request --> guard
    guard --> parse
    parse --> filtersince
    filtersince --> mapper
    mapper --> pipeline
    pipeline --> rubric

    style config fill:#4a90d9,color:#ffffff
    style check fill:#4a90d9,color:#ffffff
    style request fill:#50b060,color:#ffffff
    style guard fill:#50b060,color:#ffffff
    style parse fill:#9060c0,color:#ffffff
    style filtersince fill:#9060c0,color:#ffffff
    style mapper fill:#9060c0,color:#ffffff
    style pipeline fill:#c05050,color:#ffffff
    style rubric fill:#c05050,color:#ffffff
```

Whether ASIC needs this custom scraper at all depends on the open question below — if ASIC publishes usable RSS, the generic `rss.py` scraper handles it with zero code, and `asic.py` is unnecessary.

### Getting OpenBB running on the current Pi instance

No new server is needed — OpenBB is a local Python SDK, not a hosted service — but the **current production image does not have it installed**, confirmed by reading the live deployment files:

- `docker-compose.rpi.yml:18` builds from `Dockerfile.rpi`, the image actually run daily per `docs/pi-daily-run.md`.
- `Dockerfile.rpi:9` runs `uv sync --frozen --no-dev` with no `--extra openbb` flag, so the `openbb`/`openbb-benzinga` packages declared in `pyproject.toml`'s optional `openbb` extra are never installed in the image that exists today.
- `sources.openbb.enabled` is `false` by default in `config.example.json:89`, so even if the package were present, the scraper would no-op per the warning logic in `openbb.py:71-77`.

So "making OpenBB work" on the Pi is an image-rebuild-and-redeploy, not new infrastructure:

```mermaid
flowchart TD
    edit["Edit Dockerfile.rpi, add the openbb extra to the uv sync line"]
    provider["Decide on a provider, yfinance needs no key, FMP or Benzinga need an API key"]
    envkey["Add the provider API key to the Pi .env file, read by OpenBB SDK directly"]
    configtoggle["Set sources.openbb.enabled true in data/config.json on the Pi, define watchlists"]
    rebuild["docker compose -f docker-compose.rpi.yml build, rebuilds the image with openbb installed"]
    testrun["docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24, manual test run"]
    verify["Check docs/_posts output and logs/cron.log for OpenBB items and any warnings"]
    cronresume["Next 06 colon 00 cron firing uses the rebuilt image automatically, no cron change needed"]

    edit --> rebuild
    provider --> envkey
    envkey --> rebuild
    configtoggle --> rebuild
    rebuild --> testrun
    testrun --> verify
    verify --> cronresume

    style edit fill:#4a90d9,color:#ffffff
    style provider fill:#4a90d9,color:#ffffff
    style envkey fill:#e0a030,color:#212121
    style configtoggle fill:#4a90d9,color:#ffffff
    style rebuild fill:#50b060,color:#ffffff
    style testrun fill:#50b060,color:#ffffff
    style verify fill:#9060c0,color:#ffffff
    style cronresume fill:#c05050,color:#ffffff
```

Concrete steps, in order:

1. **Edit `Dockerfile.rpi`** (on the Pi or pushed via the normal git-pull-then-build flow) — change `RUN uv sync --frozen --no-dev` to `RUN uv sync --frozen --no-dev --extra openbb`. This is the only Dockerfile change needed; everything else is config/env.
2. **Pick a provider.** `yfinance` (the `config.example.json` default) needs no API key and is the lowest-friction way to confirm the pipeline works end-to-end before paying for anything. Upgrading to FMP/Benzinga/Polygon for better news coverage (or later, the planned `obb.currency`/`obb.commodity`/`obb.economy.calendar` extensions) is a config + key change, not another image rebuild, provided the package is already installed.
3. **Add the provider's API key to the Pi's `.env`** (same file already holding `DEEPSEEK_API_KEY` etc. per `docs/pi-daily-run.md`) — OpenBB's SDK reads its own credentials from environment variables independently of Horizon's `${VAR_NAME}` config expansion, so the env var name must match what OpenBB itself expects for that provider.
4. **Flip `sources.openbb.enabled` to `true`** in the Pi's `data/config.json` (not `config.example.json` — that file is gitignored and lives only on the Pi) and define at least one watchlist with real symbols.
5. **Rebuild the image**: `docker compose -f docker-compose.rpi.yml build` (one-time after the Dockerfile edit; not needed again until the Dockerfile changes further).
6. **Manual test run** before trusting the cron job: `docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24`, then check `docs/_posts` and `logs/cron.log` for OpenBB items or the "package not installed"/empty-watchlist warnings from `openbb.py`.
7. **No cron or `pi-deploy.sh` change needed** — the existing `0 6 * * *` crontab entry just invokes `docker compose run --rm horizon` against whatever image is currently built, so once the rebuilt image is in place, the next scheduled run picks it up automatically.

Note `docker-compose.rpi.yml` also defines an `ofelia` scheduler service (`horizon-scheduler` container) as an alternative to the crontab — per `docs/pi-daily-run.md` the **crontab entry is the actual live path**, not ofelia, so step 7 assumes that's still true; worth double-checking `crontab -l` on the Pi hasn't changed before assuming this.

## Code changes required

### 1. `src/ai/prompts.py` — rewrite the scoring rubric

Current `CONTENT_ANALYSIS_SYSTEM` (lines 23-60) scores for "software engineering, AI/ML, and systems research." Replace with a rubric scoring for:

- Direct price impact on ASX indices, AUD pairs, or commodity CFDs (rate decisions, earnings surprises, geopolitical shocks)
- Precious metals and energy moves specifically — gold/silver spot price swings, central bank gold buying, oil/gas supply shocks (OPEC+ decisions, EIA inventory surprises, pipeline/refinery disruptions) — these are large-volume CFD instruments and should be scored on par with ASX/forex moves, not treated as a minor category
- Regulatory changes affecting CFD trading conditions (leverage limits, margin close-out rules, product intervention orders) — these should score high even without "newsworthiness" in a general-press sense, since they directly change what's tradeable
- Macro data releases (CPI, employment, GDP) with explicit AU/global relevance
- Broker/platform-level news (outages, compliance actions, new CFD product listings) — lower priority but relevant for an active CFD trader
- Penalize generic stock-tip / promotional content, consistent with the existing "overly promotional" low-priority tier

Also update `CONTENT_ENRICHMENT_SYSTEM` (lines 102-138) and `CONCEPT_EXTRACTION_SYSTEM` (lines 84-88) — both currently frame output for a "technically-minded reader" / "technical concepts." Reframe for a financially-literate reader needing concepts like margin, leverage, basis points, spread explained instead.

### 2. `src/setup/wizard.py` — close the source-type gap (optional, only if using the interactive wizard)

`build_config()` (lines 191-291) has no branch for `openbb`/`ossinsight`/`gdelt`/`google_news`. If hand-editing `config.json` directly, this can be skipped. If you want `horizon-wizard` to support finance setup end-to-end, add the missing `elif` branches.

### 3. `src/scrapers/openbb.py` + `models.py` — broaden beyond equity news

Add methods for forex/commodity/economic-calendar OpenBB calls; extend `OpenBBConfig` to support non-equity instrument identifiers. Requires adding OpenBB extension packages to `pyproject.toml`'s `openbb` extra (currently only `openbb-benzinga` is pinned alongside core `openbb`).

### 4. New `src/scrapers/asic.py` (if no usable RSS exists)

Follow the `gdelt.py`/`google_news.py` pattern: async fetch, parse into `ContentItem`, register in `orchestrator.py` and `models.py` (new `ASICConfig`).

## Known architecture gap (flagged, not addressed by this plan)

The pipeline is a **digest tool** — batch fetch → AI score → daily Markdown — not a real-time feed. `ContentItem` has no price/quote fields, and there's no streaming output path. This plan deliberately stays within the digest model: regulatory changes and market-moving *news* fit it well, but live price/spread data does not. If real-time price action turns out to be a hard requirement, that's a separate, much larger architectural project (new data model, new output cadence) and is out of scope here unless you decide otherwise.

## Phased implementation order (for when you're ready to build)

1. **Config-only pilot** — new `data/config.json`: retarget `gdelt`/`google_news` queries, add AU financial RSS feeds, disable `hackernews`/`ossinsight`/`github`. Run with the *existing* (unmodified) AI prompts first to get a baseline of how badly the tech-rubric mis-scores finance content.
2. **Rewrite `prompts.py`** per above — highest leverage on output quality. Re-run, compare.
3. **Research and wire up paid sources** the user is willing to subscribe to (AFR, etc.) using the `${VAR_NAME}` env-expansion pattern where the source supports key-based full-text access.
4. **Build `asic.py`** scraper for regulatory tracking if RSS isn't sufficient.
5. **Extend `openbb.py`** for forex/commodities/economic-calendar once the equity-news-only baseline proves too narrow.
6. **Patch `wizard.py`** only if interactive setup support is wanted.

```mermaid
flowchart TD
    pilot["Step 1, config-only pilot, retarget GDELT and Google News, add AU and commodity RSS"]
    baseline["Run with existing tech-rubric prompts to capture a mis-scoring baseline"]
    rubric["Step 2, rewrite prompts.py scoring rubric for CFD relevance"]
    compare["Re-run and compare scoring quality against baseline"]
    paidstep["Step 3, research and wire up paid sources via VAR_NAME expansion"]
    asicstep["Step 4, build asic.py scraper if RSS coverage is insufficient"]
    openbbstep["Step 5, extend openbb.py for forex, commodities, economic calendar"]
    wizardstep["Step 6, patch wizard.py source-type gap, optional"]
    done["Finance and CFD focused daily digest"]

    pilot --> baseline
    baseline --> rubric
    rubric --> compare
    compare --> paidstep
    paidstep --> asicstep
    asicstep --> openbbstep
    openbbstep --> wizardstep
    wizardstep --> done

    style pilot fill:#4a90d9,color:#ffffff
    style baseline fill:#4a90d9,color:#ffffff
    style rubric fill:#50b060,color:#ffffff
    style compare fill:#50b060,color:#ffffff
    style paidstep fill:#e0a030,color:#212121
    style asicstep fill:#9060c0,color:#ffffff
    style openbbstep fill:#9060c0,color:#ffffff
    style wizardstep fill:#9060c0,color:#ffffff
    style done fill:#c05050,color:#ffffff
```

## Output privacy: drop public GitHub Pages, push via webhook/email, make the repo private now

**Decided direction**: don't wait on a company GitHub org migration. Make the existing `David-Zeng/Horizon` repo private immediately (private repos are free on GitHub Free — no Pro/org purchase needed for this part), disable GitHub Pages output, and switch primary CFD digest delivery to webhook (e.g. a Microsoft Teams incoming webhook) and/or email, both already fully built in `src/services/`. The org migration documented further down becomes optional/deferred, only relevant later if a browsable archive site is wanted.

**There are three separate things that are public today, not one — confirmed by checking the live repo:**

1. **The output (the daily digest content)** — served publicly via GitHub Pages at `https://david-zeng.github.io/Horizon/`, built by Jekyll and pushed via `peaceiris/actions-gh-pages@v4` per `.github/workflows/deploy-docs.yml`.
2. **The source code** — `gh repo view David-Zeng/Horizon` confirms `isPrivate: false` today. Anyone can currently read `prompts.py` (exact scoring logic), the scraper source list, and any CFD-specific config or prompt changes if committed to this repo.
3. **Git history** — the `gh-pages` branch already has real commit history (`Daily Summary: 2026-05-29` through `2026-05-31` test deploys, confirmed via `git log gh-pages`). Flipping the repo private later does not retroactively un-expose anything already pushed while public — but the practical exposure here is low: `gh api repos/David-Zeng/Horizon` shows **0 forks, 0 stars, 0 watchers**, so no one else has a known copy of this history to retain after the repo goes private.

Webhook/email delivery only solves (1). Making the repo private solves (2) and stops further accumulation of (3) — which is why both moves together, not webhook alone, are the right near-term fix.

```mermaid
flowchart TD
    setprivate["Set David-Zeng-Horizon repository visibility to private, free on GitHub Free"]
    disablepages["Disable GitHub Pages, or stop the deploy-docs workflow and pi-deploy.sh push step"]
    configteams["Add a Microsoft Teams incoming webhook URL, configure WebhookConfig with platform generic and a Teams-shaped request_body"]
    configemail["Optionally also enable EmailConfig SMTP delivery to specific recipients"]
    testwebhook["Run horizon-webhook CLI to test the Teams payload renders correctly before relying on it"]
    runpipeline["Next Pi cron run delivers via webhook and or email instead of pushing to gh-pages"]
    verifyclosed["Confirm the old Pages URL now 404s or requires GitHub login"]

    setprivate --> disablepages
    configteams --> testwebhook
    configemail --> testwebhook
    disablepages --> runpipeline
    testwebhook --> runpipeline
    runpipeline --> verifyclosed

    style setprivate fill:#50b060,color:#ffffff
    style disablepages fill:#50b060,color:#ffffff
    style configteams fill:#4a90d9,color:#ffffff
    style configemail fill:#4a90d9,color:#ffffff
    style testwebhook fill:#9060c0,color:#ffffff
    style runpipeline fill:#c05050,color:#ffffff
    style verifyclosed fill:#c05050,color:#ffffff
```

**Concrete steps:**

1. **Make the repo private now**: GitHub repo Settings → General → Danger Zone → Change visibility → Private. Free, immediate, no plan upgrade required for this step specifically.
2. **Disable the public output path**: stop `scripts/pi-deploy.sh` from pushing to `gh-pages` (comment out or remove that step from the cron invocation), and/or disable the `deploy-docs.yml` workflow. Leaving old `gh-pages` content in place after the repo goes private is fine — it inherits the repo's new private visibility — but no *new* content should be pushed there if the goal is to stop public accumulation.
3. **Wire up Teams via webhook** — no code change needed. `WebhookConfig.platform` (`models.py:333`) doesn't have a literal `"teams"` branch, but `platform: "generic"` plus a custom `request_body` template (the same `#{key}`-placeholder mechanism already used for the Feishu example in `config.example.json`) is exactly how to post a Teams Adaptive Card or simple `{"text": "#{summary}"}` payload to a Teams incoming webhook URL. Set `url_env` to an env var holding the Teams webhook URL (kept in `.env` on the Pi, same pattern as other secrets).
4. **Optionally also enable email** (`EmailConfig`, already SMTP/IMAP-based) for redundancy or for recipients who prefer inbox delivery over a Teams channel.
5. **Test before trusting it**: `uv run horizon-webhook` (the CLI entry point already built for exactly this) to send a test payload and confirm Teams renders it correctly, before the first real cron-triggered send.
6. **Verify the old public surface is actually closed**: load the old Pages URL from a logged-out browser and confirm it 404s (Pages disabled) or requires GitHub login (repo now private) — don't assume either change took effect without checking.
7. **Confirm upstream sync still works after going private** — `upstream` (`Thysrael/Horizon`) stays a public repo, so making `origin` (`David-Zeng/Horizon`) private doesn't change read access to it; `git fetch upstream && git merge upstream/main` (the documented sync flow in `AGENTS.md`'s Git Policy) keeps working unmodified, since fetching from a public remote needs no credentials regardless of your own repo's visibility. The thing actually worth re-checking is push: `pi-deploy.sh`'s safety guard already refuses to push if `origin` resolves to the upstream repo — that check is unaffected by visibility — but confirm the Pi's SSH credentials still authenticate correctly against `origin` once it's private (private repos enforce auth on **all** operations, including `git fetch`/`clone` by anyone other than the owner/collaborators — only relevant if any other machine/account besides the Pi and your own dev machine currently clones `origin` directly).

**Deferred / optional**: the company-org GitHub migration (private Pages via Team/Enterprise plan) detailed below remains a valid later step if a browsable archive site is wanted in addition to push-based delivery — but it's no longer a prerequisite for shipping a private CFD digest. The steps below are kept for reference if that's revisited.

### Org migration (deferred — only needed if a private browsable Pages site is wanted later)

On a **GitHub Free** plan, a GitHub Pages site is always served at a public, unauthenticated URL even from a private repo. Restricting Pages itself to authenticated collaborators requires **GitHub Pro** (personal) or a **Team/Enterprise organization** plan.

```mermaid
flowchart TD
    decide["Confirm company org plan includes Pages visibility restriction, Team or Enterprise tier"]
    createrepo["Create or transfer the repo under the company GitHub org"]
    setpagesvis["Set Pages visibility to private, restricted to org members or invited collaborators"]
    updateremote["Update git remote origin on dev machine and on the Pi to the new org URL"]
    updatesshkey["Provision a deploy key or PAT scoped to the company org repo, replace the Pi personal SSH key"]
    updaterefs["Update hardcoded owner references, docs and config and scripts"]
    testdeploy["Run pi-deploy.sh manually, confirm Pages renders only for authenticated collaborators"]

    decide --> createrepo
    createrepo --> setpagesvis
    setpagesvis --> updateremote
    updateremote --> updatesshkey
    updatesshkey --> updaterefs
    updaterefs --> testdeploy

    style decide fill:#4a90d9,color:#ffffff
    style createrepo fill:#4a90d9,color:#ffffff
    style setpagesvis fill:#50b060,color:#ffffff
    style updateremote fill:#9060c0,color:#ffffff
    style updatesshkey fill:#9060c0,color:#ffffff
    style updaterefs fill:#9060c0,color:#ffffff
    style testdeploy fill:#c05050,color:#ffffff
```

If revisited, hardcoded owner references that would need updating: `docs/_config.yml` (`url:`/`baseurl:`), `AGENTS.md`, `CLAUDE.md`, `docs/pi-daily-run.md`, `docs/rpi-docker.md`, `scripts/run-and-deploy.sh` — all currently reference `david-zeng.github.io`/`David-Zeng/Horizon`. Also re-check GitHub Actions secrets (zero configured today per the earlier audit) and `pi-deploy.sh`'s `HORIZON_FORK` safety-check env var.

## What the output actually looks like

A mock-up of one digest, built in the exact format Horizon already produces (real example: `docs/_posts/2026-05-31-summary-en.md` — same front matter, overview line, numbered ranked list, then per-item sections with `source · author · time` byline, **Background**, optional `<details>` references, optional **Discussion**, **Tags**). Only the *content* changes — title front matter, item count, and the mix of sources reflected in the bylines (`asic` · `asx-announcements` · `openbb` · `afr` · `rba` · `polymarket` · `rss` instead of `hackernews` · `reddit`). This is illustrative, not real output — it shows the shape, not actual figures.

```markdown
---
layout: default
title: "Horizon CFD Summary: 2026-06-30 (EN)"
date: 2026-06-30
lang: en
---

> From 38 items, 12 important content pieces were selected
---
1. [ASIC issues product intervention order on retail CFD leverage limits](#item-1) ⭐️ 9.0/10
2. [RBA holds cash rate at 4.10%, signals August review](#item-2) ⭐️ 9.0/10
3. [AUD/USD slides below 0.6450 as US dollar strengthens on CPI print](#item-3) ⭐️ 8.5/10
4. [Gold hits 3-week high above US$2,430/oz on safe-haven demand](#item-4) ⭐️ 8.0/10
5. [BHP shares fall 3% after iron ore guidance cut](#item-5) ⭐️ 8.0/10
6. [AFR: APRA flags capital buffer review for non-bank lenders](#item-6) ⭐️ 8.0/10
7. [Brent crude rises on OPEC+ supply cut extension](#item-7) ⭐️ 7.5/10
8. [ASX 200 closes flat as miners offset bank gains](#item-8) ⭐️ 7.0/10
9. [Polymarket: odds of August RBA rate cut jump to 61%](#item-9) ⭐️ 7.0/10
10. [Silver breaks US$30/oz, industrial demand cited](#item-10) ⭐️ 7.0/10
11. [CBA reports record Q3 home loan volume](#item-11) ⭐️ 6.5/10
12. [ASIC bans former adviser over CFD mis-selling](#item-12) ⭐️ 6.0/10
---
<a id="item-1"></a>
## [ASIC issues product intervention order on retail CFD leverage limits](https://asic.gov.au/about-asic/news-centre/find-a-media-release/2026-releases/26-xxxmr-cfd-leverage-order/) ⭐️ 9.0/10
ASIC announced a renewed product intervention order tightening leverage caps for retail CFD issuers, citing continued evidence of rapid retail losses. The order extends existing 2021 leverage ratio restrictions (30:1 major FX down to 2:1 crypto-assets) for a further five years and adds new disclosure requirements for negative balance protection. This directly affects every CFD broker operating in the Sydney market and is the single highest-impact regulatory item this period for anyone trading or issuing local CFD products.
asic · ASIC Media · Jun 30, 09:12
**Background**: ASIC's product intervention power (s1023D Corporations Act) has been used against retail CFDs since 2021. This is the first renewal decision since then, following a public consultation that closed in March.
**Tags**: `#ASIC`, `#regulatory`, `#CFD`, `#leverage`, `#product-intervention`
---
<a id="item-2"></a>
## [RBA holds cash rate at 4.10%, signals August review](https://www.rba.gov.au/media-releases/2026/mr-26-12.html) ⭐️ 9.0/10
The Reserve Bank of Australia held the cash rate steady at its June meeting, in line with market expectations, but the accompanying statement softened language on inflation persistence, raising the odds of a cut at the August meeting. AUD CFD and forex traders should watch the August 5 meeting closely given the shift in forward guidance.
rba · RBA Media · Jun 30, 14:35
**Background**: The cash rate has been held at 4.10% since February. Markets had priced roughly a 35% chance of a hold-with-dovish-tilt outcome going into this meeting.
**Tags**: `#RBA`, `#interest-rates`, `#AUD`, `#monetary-policy`
---
<a id="item-3"></a>
## [AUD/USD slides below 0.6450 as US dollar strengthens on CPI print](https://www.afr.com/markets/currencies/aud-usd-falls-on-us-cpi-20260630-xxxxx) ⭐️ 8.5/10
*(AFR, subscriber content — full text via paid-source pipeline)* The Australian dollar fell to a five-week low against the US dollar after a hotter-than-expected US CPI print reduced the odds of near-term Fed rate cuts. AFR's markets desk notes this is the third consecutive session of AUD weakness, with technical support now being tested near 0.6400 — a level relevant to forex-CFD stop placement.
afr · AFR Markets Desk · Jun 30, 11:48
**Background**: AUD/USD had been range-bound between 0.6450-0.6600 for most of June prior to this move.
**Tags**: `#AUDUSD`, `#forex-cfd`, `#afr`, `#paid-source`
---
<a id="item-4"></a>
## [Gold hits 3-week high above US$2,430/oz on safe-haven demand](https://www.investing.com/commodities/gold-news) ⭐️ 8.0/10
Spot gold climbed to a three-week high as escalating Middle East tensions drove safe-haven flows, with CFD volumes on gold spiking in early Asian trade. Silver and platinum also gained, though gold remains the dominant commodity-CFD instrument by retail volume locally.
rss · Investing.com Commodities · Jun 30, 06:20
**Background**: Gold has traded in a US$2,350-2,420 range since mid-May; this is the first close above US$2,430 since early June.
**Tags**: `#gold`, `#commodities-metals`, `#safe-haven`, `#CFD`
---
<a id="item-5"></a>
## [BHP shares fall 3% after iron ore guidance cut](https://simplywall.st/stocks/au/materials/asx-bhp/bhp-group) ⭐️ 8.0/10
BHP shares fell sharply after the company trimmed FY26 iron ore production guidance, citing weather disruption at Pilbara operations. As the largest-weighted ASX CFD instrument by retail trading volume, BHP moves are disproportionately relevant to the local CFD market regardless of broader index direction.
openbb · yfinance · Jun 30, 10:05
**Background**: BHP is the largest constituent of the ASX 200 materials sector and one of the most heavily CFD-traded local equities.
**Tags**: `#BHP`, `#ASX`, `#iron-ore`, `#equities-cfd`
---
<a id="item-6"></a>
## [AFR: APRA flags capital buffer review for non-bank lenders](https://www.afr.com/companies/financial-services/apra-non-bank-capital-20260629-xxxxx) ⭐️ 8.0/10
*(AFR, subscriber content)* APRA signalled a review of capital buffer requirements for non-bank lenders amid rising mortgage arrears, a regulatory development distinct from but adjacent to ASIC's CFD-specific actions — relevant for traders watching financial-sector CFDs and ASX-listed lenders.
afr · AFR Regulatory · Jun 29, 16:50
**Background**: APRA regulates prudential standards separately from ASIC's market-conduct remit; the two bodies' actions are often conflated but cover different risk categories.
**Tags**: `#APRA`, `#regulatory`, `#non-bank-lending`, `#afr`, `#paid-source`
---
<a id="item-7"></a>
## [Brent crude rises on OPEC+ supply cut extension](https://oilprice.com/Energy/Crude-Oil/) ⭐️ 7.5/10
Brent crude rose over 2% after OPEC+ confirmed an extension of voluntary supply cuts through Q3, lifting energy-CFD instruments broadly. WTI followed with a smaller gain given divergent US inventory data released the same day.
rss · OilPrice.com · Jun 30, 03:15
**Background**: OPEC+ had been expected to taper cuts gradually; this extension surprised markets pricing a partial unwind.
**Tags**: `#oil`, `#commodities-energy`, `#OPEC`, `#CFD`
---
<a id="item-8"></a>
## [ASX 200 closes flat as miners offset bank gains](https://www.marketindex.com.au/asx200) ⭐️ 7.0/10
The ASX 200 closed roughly unchanged as weakness in materials (tracking the BHP guidance cut) offset gains in the financial sector following stronger-than-expected bank earnings updates.
rss · Market Index · Jun 30, 16:15
**Background**: The ASX 200 has been range-bound between 8,100-8,300 for the past two weeks.
**Tags**: `#ASX200`, `#indices-cfd`, `#market-wrap`
---
<a id="item-9"></a>
## [Polymarket: odds of August RBA rate cut jump to 61%](https://polymarket.com/event/rba-august-decision) ⭐️ 7.0/10
Prediction-market odds for an August RBA rate cut rose sharply following the softer language in today's RBA statement, up from 38% a week ago. This is a leading sentiment indicator, not a news event — included as alt-data context for traders positioning ahead of the August 5 decision rather than as a standalone story.
polymarket · Gamma API snapshot · Jun 30, 15:02
**Background**: Polymarket odds are continuously updated; this figure is a snapshot at fetch time, not a fixed historical fact like a news article.
**Tags**: `#polymarket`, `#alt-data`, `#RBA`, `#prediction-market`
---
<a id="item-10"></a>
## [Silver breaks US$30/oz, industrial demand cited](https://www.kitco.com/news/) ⭐️ 7.0/10
Silver crossed US$30/oz for the first time this quarter, with analysts citing strong industrial/solar-panel demand alongside the broader precious-metals safe-haven bid.
rss · Kitco News · Jun 30, 05:40
**Background**: Silver had underperformed gold for most of 2026 before this catch-up move.
**Tags**: `#silver`, `#commodities-metals`, `#industrial-demand`
---
<a id="item-11"></a>
## [CBA reports record Q3 home loan volume](https://www.commbank.com.au/articles/newsroom/) ⭐️ 6.5/10
Commonwealth Bank reported record quarterly home loan settlements, beating analyst expectations and lifting financial-sector sentiment on the ASX.
openbb · yfinance · Jun 30, 09:50
**Background**: CBA is the largest ASX-listed bank by market cap and a heavily CFD-traded financial instrument.
**Tags**: `#CBA`, `#ASX`, `#banking`, `#equities-cfd`
---
<a id="item-12"></a>
## [ASIC bans former adviser over CFD mis-selling](https://asic.gov.au/about-asic/news-centre/find-a-media-release/2026-releases/26-xxxmr-adviser-ban/) ⭐️ 6.0/10
ASIC permanently banned a former financial adviser for mis-selling high-leverage CFD products to retail clients without adequate risk disclosure — a smaller enforcement action than item 1, but part of the same regulatory pattern worth tracking for compliance-relevant CFD news.
asic · ASIC Media · Jun 30, 08:30
**Background**: This is an individual enforcement action under ASIC's banking and finance conduct powers, separate from the broader product intervention order in item 1.
**Tags**: `#ASIC`, `#enforcement`, `#CFD`, `#regulatory`
---
```

Notable shifts from the current AI/tech format, visible directly in the mock-up above:

- **Bylines carry the new source mix**: `asic`, `rba`, `afr`, `openbb`, `polymarket` alongside the existing `rss` — replacing `hackernews`/`reddit`/`github` as the dominant attributions.
- **Paid-source items are flagged inline** (`*(AFR, subscriber content...)*` prefix, `#afr`/`#paid-source` tags) so a reader can tell at a glance which items came through the Path A/B/C paid pipeline versus free sources — this convention doesn't exist today and would need adding to the summarizer prompt.
- **Regulatory items rank highest** (ASIC, RBA at 9.0) — reflecting `prompts.py`'s rewritten scoring criteria favoring regulatory/rate-decision impact over the current AI/tech "interesting to engineers" framing.
- **Polymarket items read differently in kind** — phrased as a snapshot ("odds rose to 61% as of fetch time") rather than a discrete event, with an explicit note in the Background field flagging it as time-sensitive alt-data, not a fixed historical fact — the schema/semantic mismatch flagged earlier in this document, handled here at the prompt/template level rather than a data model change.
- **No HN-style Discussion section** for most items, since most CFD-relevant sources (ASIC, RBA, AFR, OpenBB) don't have a comment-thread equivalent — only RSS/Reddit-style sources would retain that field; it would simply be omitted (as already happens for `rss`-sourced items in the current format, see item 8 above in the real example).
- **Item volume composition differs**: where the current digest is HN/Reddit-heavy with a long tail of lower-scored general-tech items, a CFD digest skews toward fewer, higher-average-score items (more 7s and 8s, fewer 5s/6s) because regulatory and rate-decision news is inherently higher-signal and lower-volume than general tech discussion — `filtering.ai_score_threshold` may need recalibrating (currently 6.0/7.0 across the two example configs) once real scoring data exists.

## Self-improve module: a source-gap discovery process

A separate, manually-triggered audit that asks "are we missing a source that's now worth adding?" — distinct from the daily pipeline run, and read-only (it reports gaps, it does not edit `config.json` itself).

**Why this earns its own module rather than living in the daily run**: the daily pipeline answers "what happened in the last 24h from known sources." This answers a slower-moving question — "has the *source list itself* gone stale" — which only needs checking occasionally (weekly/monthly), not on every cron tick, and produces a judgment call for a human, not content for the digest.

**Reuses existing building blocks rather than adding new ones**: the same `ddgs` (DuckDuckGo) web-search call already used in `src/ai/enricher.py` for grounding background knowledge, and the same `AIClient.complete()` JSON-response pattern already used for scoring/enrichment. No new dependency, no new AI-provider wiring.

```mermaid
flowchart TD
    trigger["Manually run: uv run horizon-discover, or an MCP tool hz_discover_sources"]
    loadconfig["Load current data/config.json, describe configured sources as a flat list"]
    queries["Run a fixed set of search queries: ASIC media releases RSS, AFR markets RSS, Sydney CFD broker news, RBA statements feed, commodities-metals RSS, etc."]
    search["Web search each query via ddgs, same call already used in enricher.py"]
    askai["Feed search results plus the configured-sources list to the AI client, ask it to flag genuine gaps only"]
    filterknown["AI is instructed to skip anything already represented in the configured list, judged by publisher name not just category"]
    report["Render a gap report: candidate name, why it's a gap, suggested URL, source_type, category, confidence"]
    human["Human reviews the report and manually adds anything worth keeping to config.json"]

    trigger --> loadconfig
    loadconfig --> queries
    queries --> search
    search --> askai
    loadconfig --> askai
    askai --> filterknown
    filterknown --> report
    report --> human

    style trigger fill:#4a90d9,color:#ffffff
    style loadconfig fill:#50b060,color:#ffffff
    style queries fill:#50b060,color:#ffffff
    style search fill:#9060c0,color:#ffffff
    style askai fill:#9060c0,color:#ffffff
    style filterknown fill:#9060c0,color:#ffffff
    style report fill:#c05050,color:#ffffff
    style human fill:#e0a030,color:#212121
```

**Shape of the output** — a per-query report, e.g.:

```text
Query: "ASIC media release RSS feed"
  [HIGH] ASIC Media Releases — no RSS source currently configured for ASIC
         enforcement/regulatory announcements; this is the gap the whole
         regulatory-tracking goal depends on.
         suggested: https://asic.gov.au/about-asic/news-centre/...
         type: rss, category: regulatory-asic

Query: "Sydney CFD broker market commentary"
  [MEDIUM] IG Australia market analysis blog — CFD-specific commentary,
           not currently covered; has an RSS feed.
           type: rss, category: cfd-commentary
  notes: "Several results were broker marketing content, not news — excluded."
```

**Scoped deliberately narrow for a first version** (per the decisions made when this was designed): audits coverage gaps only — it does not also score whether *existing* sources are still pulling their weight, and it does not auto-generate a config diff. Both are natural follow-ups once the basic gap report proves useful, but starting narrower keeps the first version reviewable. Triggering is manual (a CLI/MCP command run on demand), not wired into the daily Pi cron — so it has zero effect on the live production path until you decide it's worth scheduling.

**What this would touch when actually implemented** (not done — design only, consistent with the rest of this document):

- A new `src/discovery/` module with a `SourceGapFinder` class, following the same constructor-takes-`AIClient` pattern as `ContentAnalyzer`/`ContentEnricher`.
- Two new prompt constants in `src/ai/prompts.py` (`SOURCE_GAP_SYSTEM`/`SOURCE_GAP_USER`), following the existing system/user-prompt-pair convention.
- A new CLI entry point (`horizon-discover` in `pyproject.toml`'s `[project.scripts]`, mirroring `horizon-webhook`'s `src.services.webhook_cli:main` pattern) or an MCP tool (`hz_discover_sources` in `src/mcp/server.py`, alongside the existing `hz_*` staged-pipeline tools) — either fits the existing entry-point conventions equally well; worth picking based on whether this gets run from a terminal or from an MCP-connected assistant day to day.

## Open questions to resolve before implementation

- Which paid subscriptions are you actually willing to pay for? This determines whether step 3 is in scope at all.
- Does ASIC publish a usable RSS/API for media releases and CFD product intervention orders, or does it need scraping (different effort/legal-ToS consideration)?
- Should AUD/USD and other forex pairs be in scope from day one, or ASX-equity-CFD-first?
- Is `obb.news.company()` willing to accept forex/commodity symbols, or does broadening OpenBB require switching to different endpoints entirely? (Needs empirical SDK testing.)
- Which commodities beyond gold/silver/oil matter (natural gas, copper, agricultural CFDs)? This determines RSS/keyword breadth in `commodities-metals` and `commodities-energy` categories.
- Which GitHub plan tier does the company org actually have, and does it confirmed-include private Pages visibility — needs checking before the migration plan above is finalized.
- Repo transfer (keep history) vs. fresh repo (clean break from the public AI/tech history) — which is preferred for the company org copy?
- Who else at the company needs access, and should they be added as org members/collaborators before or after the first private CFD run?
