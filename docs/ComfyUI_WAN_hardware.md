# 💻 Hardware Requirements

## T2V-A14B or I2V-A14B (high/low) 

### **Recommended GPU**

- precision fp16
- video settings 1024x768 122 frames (ComfyUI-WanVideoWrapper offload 10)

| GPU          | VRAM  | RAM ComfyUI-Native/ComfyUI-WanVideoWrapper |
|--------------------------|-------|-------------------------|
| L40S, RTX 6000 Ada, L40       | 45Gb | 90Gb/50Gb           |

### Possible GPU with limitations due to available ram on rupod.io

- precision fp16
- video settings 1024x768 97 frames (ComfyUI-WanVideoWrapper Offload 10)
- only possible with worflows based on ComfyUI-WanVideoWrapper (Included in pod)

| GPU       | VRAM  | RAM ComfyUI-WanVideoWrapper |
|--------------------------|-------|--------------|
| A40       | 45Gb | 45Gb |

## Animate

- precision fp16
- video settings 1024x768 77 chunks/Sampler

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada, L40  | 40Gb | 105Gb | 

## Storage

| Component        | Minimum                  |
|------------------|--------------------------|
| Volume Storage   | 90Gb (`/workspace`)      |
| Pod Storage      | 15Gb                     |