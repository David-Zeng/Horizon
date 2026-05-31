#!/usr/bin/env bash
# Install daily cron job on the Pi to run Horizon + deploy.
# Usage: ./scripts/install-cron.sh [pi@10.1.1.148]
set -euo pipefail

PI_HOST="${1:-pi@10.1.1.148}"
PI_DIR="/home/pi/git_repo/Horizon"

CRON_LINE="0 6 * * * cd $PI_DIR && docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24 && ./scripts/pi-deploy.sh >> logs/cron.log 2>&1"

echo "Installing cron on $PI_HOST..."

ssh "$PI_HOST" "bash -s" <<'EOF'
PI_DIR="/home/pi/git_repo/Horizon"
CRON_LINE='0 6 * * * cd '"$PI_DIR"' && docker compose -f docker-compose.rpi.yml run --rm horizon --hours 24 && ./scripts/pi-deploy.sh >> logs/cron.log 2>&1'

# Create logs dir
mkdir -p "$PI_DIR/logs"

# Add cron if not already present
if crontab -l 2>/dev/null | grep -qF 'pi-deploy.sh'; then
    echo "Cron already installed."
else
    (crontab -l 2>/dev/null; echo "$CRON_LINE") | crontab -
    echo "Cron installed: runs daily at 6 AM Sydney (20:00 UTC)"
fi

crontab -l | grep pi-deploy
EOF

echo ""
echo "Done. Next run: tomorrow at 6 AM Sydney time."
echo "To verify: ssh $PI_HOST 'crontab -l'"
