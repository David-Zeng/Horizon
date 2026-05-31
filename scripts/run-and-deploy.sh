#!/usr/bin/env bash
# Run Horizon on the Pi and deploy to GitHub Pages — all from this Mac.
# Usage: ./scripts/run-and-deploy.sh [--hours 24]
set -euo pipefail

PI_HOST="${PI_HOST:-pi@10.1.1.148}"
PI_DIR="${PI_DIR:-/home/pi/git_repo/Horizon}"
HOURS="${1:-24}"

echo "=== 1/2 Running Horizon on Pi (--hours $HOURS) ==="
ssh "$PI_HOST" "cd $PI_DIR && docker compose -f docker-compose.rpi.yml run --rm horizon --hours $HOURS"

echo ""
echo "=== 2/2 Deploying to GitHub Pages ==="
ssh "$PI_HOST" "cd $PI_DIR && ./scripts/pi-deploy.sh"

echo ""
echo "=== Done — https://david-zeng.github.io/Horizon/ ==="
