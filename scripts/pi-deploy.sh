#!/usr/bin/env bash
# Post-run deploy script for the Raspberry Pi Horizon instance.
# Run this AFTER `docker compose -f docker-compose.rpi.yml run --rm horizon`.
#
# Pushes docs/ directly to the gh-pages branch via git worktree.
# No CI needed — GitHub Pages updates immediately after push.
#
# Usage:
#   ./scripts/pi-deploy.sh
#
# Prerequisites (on the Pi):
#   - git remote origin must point to your GitHub fork
#   - git push must work (SSH key or token configured)
#   - docs/_posts/ must persist via docker compose volume mount (./docs:/app/docs)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
LOG_PREFIX="[deploy $(date '+%Y-%m-%d %H:%M:%S')]"

cd "$PROJECT_DIR"

# Safety: NEVER push to upstream repo (Thysrael/Horizon).
# Set HORIZON_FORK to your own fork to skip the check prompt.
origin_url=$(git remote get-url origin 2>/dev/null || true)
if echo "$origin_url" | grep -qi "Thysrael/Horizon"; then
    echo "$LOG_PREFIX ❌ Refusing to push to upstream repo Thysrael/Horizon." >&2
    echo "$LOG_PREFIX    Set origin to your fork: git remote set-url origin git@github.com:YOUR_USER/Horizon.git" >&2
    exit 1
fi

EXPECTED_FORK="${HORIZON_FORK:-}"
if [ -n "$EXPECTED_FORK" ]; then
    if ! echo "$origin_url" | grep -qi "$EXPECTED_FORK"; then
        echo "$LOG_PREFIX ❌ origin ($origin_url) does not match HORIZON_FORK=$EXPECTED_FORK" >&2
        exit 1
    fi
elif [ -n "$origin_url" ]; then
    fork_hint=$(echo "$origin_url" | sed 's|.*github.com[:/]||; s|\.git$||')
    echo "$LOG_PREFIX 🔒 Target: $fork_hint  (set HORIZON_FORK=\"$fork_hint\" to silence this)"
fi

# Pre-flight: check we have something to deploy
POSTS_DIR="docs/_posts"
if [ ! -d "$POSTS_DIR" ]; then
    echo "$LOG_PREFIX ⚠️  $POSTS_DIR does not exist. Nothing to deploy."
    echo "$LOG_PREFIX    Run Horizon first: docker compose -f docker-compose.rpi.yml run --rm horizon"
    exit 0
fi

post_count=$(find "$POSTS_DIR" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
if [ "$post_count" -eq 0 ]; then
    echo "$LOG_PREFIX ⚠️  No .md files in $POSTS_DIR. Nothing to deploy."
    exit 0
fi

echo "$LOG_PREFIX Deploying $post_count post file(s) to gh-pages..."

# Deploy via git worktree (avoids switching branches in the working tree)
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

git fetch origin gh-pages:gh-pages 2>/dev/null \
    || { git checkout --orphan gh-pages && git checkout main; }

# Clean stale worktrees from interrupted runs
git worktree prune
rm -rf /tmp/tmp.* 2>/dev/null || true

git worktree add "$TMPDIR" gh-pages
rm -rf "$TMPDIR/_posts"
cp -r docs/* "$TMPDIR/"

cd "$TMPDIR"
git add -A

date_str=$(date '+%Y-%m-%d')
git commit -m "Daily Summary: $date_str (from Pi)" \
    || { echo "$LOG_PREFIX Nothing to commit. Already up to date."; exit 0; }

git push origin gh-pages

cd "$PROJECT_DIR"
git worktree remove "$TMPDIR"

echo "$LOG_PREFIX ✅ Done — live at https://$(echo "$origin_url" | sed 's|.*github.com[:/]||; s|\.git$||' | sed 's|/Horizon$||').github.io/Horizon/"
