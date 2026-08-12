# Kimi K3 Research

Research repository documenting acquisition, verification, and experimentation with the official open-weight **Moonshot AI Kimi K3** model.

## Model

- Hugging Face repository: `moonshotai/Kimi-K3`
- Exact revision: `9f62e4e9fffbd0a83ddd60e1c209d828994b3569`
- Architecture: `KimiK3ForConditionalGeneration`
- Model type: `kimi_k3`
- Total parameters: approximately 2.8 trillion
- Weight shards: 96 Safetensors files
- Quantization: native MXFP4 weights

## Official checkpoint acquisition

The official Kimi K3 checkpoint was downloaded using the Hugging Face CLI.

```bash
hf download moonshotai/Kimi-K3 \
  --local-dir "/Volumes/Kimi_K3/model"
```

The completed reconstruction was approximately **1.56 TB**.

## Verification

### Weight shard count

```bash
find "/Volumes/Kimi_K3/model" -maxdepth 1 \
  -name 'model-*-of-000096.safetensors' | wc -l
```

Result:

```text
96
```

### Repository completeness

A Hugging Face dry run reported:

```text
Will download 0 files (out of 118) totalling 0.0B.
```

### Full checksum verification

```bash
hf cache verify moonshotai/Kimi-K3 \
  --local-dir "/Volumes/Kimi_K3/model" \
  --fail-on-missing-files
```

Result:

```text
Verified 118 file(s) for model 'moonshotai/Kimi-K3'. All checksums match.
```

## Reproducibility

Exact checkpoint revision:

```text
9f62e4e9fffbd0a83ddd60e1c209d828994b3569
```

The revision is also stored in `MODEL_REVISION.txt`.

Reproducibility scripts:

- `scripts/download_kimi_k3.sh`
- `scripts/verify_kimi_k3.sh`

## Model weights

The Kimi K3 model weights are **not stored in this GitHub repository**.

The official checkpoint is approximately 1.56 TB and is stored separately. This repository contains reproducibility metadata, research scripts, code, and experimental results.

## Source

Official model: `moonshotai/Kimi-K3` on Hugging Face.
