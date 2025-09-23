# Pod documentation

## Workflows & Tutorials  

- [wan-video](https://wan.video/)
- [ComfyUI 2.1](https://comfyanonymous.github.io/ComfyUI_examples/wan/)
- [ComfyUI 2.2](https://comfyanonymous.github.io/ComfyUI_examples/wan22/)
- [ComfyUI 2.2 s2v](https://docs.comfy.org/tutorials/video/wan/wan2-2-s2v)
- [Wiki 2.1](https://comfyui-wiki.com/en/tutorial/advanced/wan21-video-model)
- [Enhance a Video](https://oahzxl.github.io/Enhance_A_Video/)  
- [AccVideo](https://github.com/aejion/AccVideo)
- [CausVid](https://github.com/tianweiy/CausVid)
- [NAG](https://chendaryen.github.io/NAG.github.io/)
- [vace](https://docs.comfy.org/tutorials/video/wan/vace)
- [Phantom](https://github.com/Phantom-video/Phantom)
- [FusionX Lora](https://civitai.com/models/1681541?modelVersionId=1903277)
- [light2xtv](https://huggingface.co/lightx2v)
- [Pusa-VidGen](https://github.com/Yaofang-Liu/Pusa-VidGen)
- [Animated preview](https://civitai.com/articles/12623/dont-just-guess-with-your-wan-gens-animated-previews-for-seed-hunting-guide-comfyui)
- [Tutorial s2v](https://www.kombitz.com/2025/09/02/how-to-use-wan-2-2-s2v-gguf-model-in-comfyui/)
- [Samplers](https://websim.com/c/I0nMJ7gYtQqdjW7yD)

## Example workflow

- Text to video workflow available in /workspace/ComfyUI/user/default/workflows
- Open workflow from ComfyUI's interface on the left.

## Software Repositories  

### Core  

- [ComfyUI](https://github.com/comfyanonymous/ComfyUI)  
- [Code Server](https://github.com/coder/code-server)  
- [HuggingFace cli](https://huggingface.co/docs/huggingface_hub/guides/cli)

### Custom Nodes ComfyUI 

#### Full list

- [awesome-comfyui](https://awesome-comfyui.rozenlaan.site)

#### Interface

- [rgthree](https://github.com/rgthree/rgthree-comfy)  
- [Login](https://github.com/liusida/ComfyUI-Login)  
- [Manager](https://github.com/ltdrdata/ComfyUI-Manager)
- [KJNodes](https://github.com/kijai/ComfyUI-KJNodes)  
- [GGUF](https://github.com/city96/ComfyUI-GGUF)
- [ComfyMath](https://github.com/evanspearman/ComfyMath.git)
- [Resolution master](https://github.com/Azornes/Comfyui-Resolution-Master.git)

#### Video

- [Video Helper Suite](https://github.com/kosinkadink/ComfyUI-VideoHelperSuite)
- [Frame Interpolation](https://github.com/Fannovel16/ComfyUI-Frame-Interpolation)
- [VideoUpscale with Model](https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel)
- [vrgamedevgirl](https://github.com/vrgamegirl19/comfyui-vrgamedevgirl)

#### Wan

- [Wrapper](https://github.com/kijai/ComfyUI-WanVideoWrapper)
- [StartEndFrame](https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative)

#### Inference

- [RES4LYF](https://github.com/ClownsharkBatwing/RES4LYF)
- [Noise](https://github.com/BlenderNeko/ComfyUI_Noise)
- [NAG](https://github.com/ChenDarYen/ComfyUI-NAG)
- [WanMoeKSampler](https://github.com/stduhpf/ComfyUI-WanMoeKSampler)
- [SD Upscale](https://github.com/ssitu/ComfyUI_UltimateSDUpscale)

## Models

### Sources  

- [Wan-Video Github](https://github.com/Wan-Video)
- [Wan-s2v-webpage](https://humanaigc.github.io/wan-s2v-webpage/)
- [Wan-AI Huggingface](https://huggingface.co/Wan-AI)  
- [WAN-VACE Github](https://github.com/ali-vilab/VACE)
- [FusionX Huggingface](https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX)
- [MoviiGen Huggingface](https://huggingface.co/ZuluVision/MoviiGen1.1)
- [Fun](https://huggingface.co/collections/alibaba-pai/wan21-fun-v11-680f514c89fe7b4df9d44f17)
- [alibaba-pai](https://huggingface.co/collections/alibaba-pai/wan21-fun-67e4fb3b76ca01241eb7e334)
- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy)

### Manual provisioning

- [WAN 2.1](provisioning/hf_wan21.md)
- [WAN 2.2 t2v s2v](provisioning/hf_wan22.md)
- [Upscale](provisioning/hf_upscale.md)
- [Loras wan21](provisioning/hf_loras_wan21.md)
- [Loras wan22](provisioning/hf_loras_wan22.md)

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
