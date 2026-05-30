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
