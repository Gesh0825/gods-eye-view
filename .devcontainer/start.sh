#!/usr/bin/env bash
# Auto-starts God's Eye View inside a GitHub Codespace — no typing needed.
if curl -s -o /dev/null 127.0.0.1:4173; then
  echo "God's Eye View is already running — open the Ports tab or the pop-up."
  exit 0
fi
export HOST=127.0.0.1
export GEV_ALLOWED_HOSTS="${CODESPACE_NAME}-4173.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
echo "Starting God's Eye View at https://${GEV_ALLOWED_HOSTS}"
exec npm run dev
