# Pod documentation

## Full pod information

- [ComfyUI WAN 2.x](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)

### Manual provisioning

### 2.2

- [t2v](provisioning/hf_wan22_t2v.md)
- [i2v](provisioning/hf_wan22_i2v.md)
- [s2v](provisioning/hf_wan22_s2v.md)
- [animate](provisioning/hf_wan22_animate.md)
- [loras](provisioning/hf_wan22_loras.md)
- [Lucy edit](provisioning/hf_lucy_edit.md)

### 2.1

- [WAN](provisioning/hf_wan21.md)
- [HuMo](provisioning/hf_humo.md)
- [loras](provisioning/hf_wan21_loras.md)

### Others

- [Sementation](provisioning/hf_segmentation.md)
- [Upscale](provisioning/hf_upscale.md)

#### **Huggingface**  

```bash
export HF_TOKEN="xxxxx"
hf download model model_name.safetensors --local-dir /workspace/ComfyUI/models/diffusion_models/
hf upload model /workspace/model.safetensors
```

```bash
hf auth login --token xxxxx
```

#### **CivitAI**  

```bash
export CIVITAI_TOKEN="xxxxx"
civitai "<download link>" /workspace/ComfyUI/models/diffusion_models
civitai "<download link>" /workspace/ComfyUI/models/loras
```
## 7z Compression  

### **Encrypt & Archive Output**  

```bash
7z a -p -mhe=on /workspace/output/output-wan-x.7z /workspace/ComfyUI/output/
```

### **Extract Archive**  

```bash
7z x x.7z
```

## Clean up  

```bash
rm -rf /workspace/output/ /workspace/input/ /workspace/ComfyUI/output/ /workspace/ComfyUI/models/loras/
```

## Utilities  

```bash
nvtop   # GPU Monitoring  
htop    # Process Monitoring  
mc      # Midnight Commander  
nano    # Text Editor
ncdu    # Clean Up
unzip
```
