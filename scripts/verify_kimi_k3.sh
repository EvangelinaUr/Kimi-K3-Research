#!/usr/bin/env bash
set -euo pipefail

MODEL_ID="moonshotai/Kimi-K3"
REVISION="9f62e4e9fffbd0a83ddd60e1c209d828994b3569"
LOCAL_DIR="${1:-/Volumes/Kimi_K3/model}"

echo "Checking weight shards..."
SHARDS=$(find "$LOCAL_DIR" -maxdepth 1 \
  -name 'model-*-of-000096.safetensors' | wc -l | tr -d ' ')

echo "Weight shards found: ${SHARDS}/96"

echo "Running Hugging Face checksum verification..."
hf cache verify "$MODEL_ID" \
  --revision "$REVISION" \
  --local-dir "$LOCAL_DIR" \
  --fail-on-missing-files
