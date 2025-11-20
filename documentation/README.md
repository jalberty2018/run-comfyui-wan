# Pod documentation

## Information

- [Configurations](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)

## Workflows

- Open from ComfyUI's interface on the left
- Download from [Workflow examples](https://awesome-comfyui.rozenlaan.site/ComfyUI_workflows/)

## Installed custom nodes

- Open ComfyUI manager installed custom nodes.
- Included in latest image [custom_nodes](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_custom_nodes/)

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

- [Segmentation](provisioning/hf_segmentation.md)
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

## Code-Server

```bash
export PASSWORD="xxxxx"
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
ncdu
```

## Utilities  

```bash
nvtop      # GPU Monitoring
nvidia-smi # GPU information
htop       # Process Monitoring  
mc         # Midnight Commander (file manager)  
nano       # Text Editor
ncdu       # Clean Up
unzip      # uncompress
7z         # Archiving
runpodctl  # runpod pod management
```

## Comfy-cli

```bash
comfy-cli set-default /workspace/ComfyUI/
comfy-cli
comfy-cli env
```

## Test/debug

```bash
python /workspace/test/test_pytorch_cuda.py
python /workspace/test/test_flash.py
python /workspace/test/test_sage.py
```