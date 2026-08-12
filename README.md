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
