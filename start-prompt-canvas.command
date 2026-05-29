#!/bin/zsh
cd "$(dirname "$0")"

PORT=8765
URL="http://localhost:${PORT}/index.html"

if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 is required to start Prompt Canvas."
  read -k 1 "?Press any key to close..."
  exit 1
fi

if lsof -nP -iTCP:${PORT} -sTCP:LISTEN >/dev/null 2>&1; then
  echo "Prompt Canvas server is already running on ${URL}"
  open "${URL}"
else
  echo "Starting Prompt Canvas on ${URL}"
  open "${URL}"
  python3 -m http.server "${PORT}" --directory "$(pwd)"
fi
