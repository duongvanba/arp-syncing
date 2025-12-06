#!/usr/bin/env bash
set -euo pipefail

OPTIONS_FILE="/data/options.json" 

if [ -f "$OPTIONS_FILE" ]; then
  IP=$(jq -r '.ip // empty' "$OPTIONS_FILE")
  USERNAME=$(jq -r '.username // empty' "$OPTIONS_FILE")
  PASSWORD=$(jq -r '.password // empty' "$OPTIONS_FILE")
  export IP
  export USERNAME
  export PASSWORD
fi

exec bun run ./src/index.ts
