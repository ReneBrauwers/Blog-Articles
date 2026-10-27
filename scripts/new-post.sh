#!/usr/bin/env bash
# Usage: scripts/new-post.sh "My post title"
set -euo pipefail
title="$1"; slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g;s/^-|-$//g')
f="_posts/$(date +%Y)/$slug.md"; mkdir -p "$(dirname "$f")"
[ -e "$f" ] && { echo "exists: $f"; exit 1; }
printf -- '---\ntitle: "%s"\ndate: %s\ntags: []\n---\n\nWrite here.\n' "$title" "$(date +%Y-%m-%dT%H:%M:%S%z)" > "$f"
echo "created $f (URL: /$(date +%Y/%m/%d)/$slug/)"
