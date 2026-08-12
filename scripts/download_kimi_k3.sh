#!/usr/bin/env bash
set -euo pipefail

MODEL_ID="moonshotai/Kimi-K3"
REVISION="9f62e4e9fffbd0a83ddd60e1c209d828994b3569"
LOCAL_DIR="${1:-/Volumes/Kimi_K3/model}"

export HF_XET_RECONSTRUCT_WRITE_SEQUENTIALLY=1

hf download "$MODEL_ID" \
  --revision "$REVISION" \
  --local-dir "$LOCAL_DIR"
