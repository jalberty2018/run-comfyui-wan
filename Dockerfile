# Base Image
FROM ls250824/comfyui-runtime:22082025 AS base

# Set Working Directory
WORKDIR /

# Copy Scripts and Configurations
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/provisioning-on-workspace.sh onworkspace/readme-on-workspace.sh / 
COPY --chmod=644 comfy.settings.json /ComfyUI/user/default/comfy.settings.json
COPY --chmod=664 /documentation/README_runpod.md /README.md
COPY --chmod=644 provisioning/ /provisioning
COPY --chmod=644 workflows/ /ComfyUI/user/default/workflows

# Install Required Packages
RUN mkdir -p /ComfyUI/custom_nodes && \
    cd /ComfyUI/custom_nodes && \
    git clone https://github.com/ltdrdata/ComfyUI-Manager.git && \
    git clone https://github.com/rgthree/rgthree-comfy.git && \
	git clone https://github.com/welltop-cn/ComfyUI-TeaCache.git && \
    git clone https://github.com/liusida/ComfyUI-Login.git && \
    git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git && \
    git clone https://github.com/kijai/ComfyUI-KJNodes.git && \
    git clone https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git && \
	git clone https://github.com/kijai/ComfyUI-WanVideoWrapper.git && \
	git clone https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative.git && \
	git clone https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel && \
	git clone https://github.com/ClownsharkBatwing/RES4LYF.git && \
	git clone https://github.com/BlenderNeko/ComfyUI_Noise.git && \
	git clone https://github.com/ChenDarYen/ComfyUI-NAG.git && \
	git clone https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git && \
	git clone https://github.com/evanspearman/ComfyMath.git && \
	git clone https://github.com/city96/ComfyUI-GGUF.git && \
	git clone https://github.com/stduhpf/ComfyUI-WanMoeKSampler.git && \
    git clone https://github.com/Azornes/Comfyui-Resolution-Master.git

# Install Dependencies
RUN pip3 install --no-cache-dir diffusers psutil \
    -r /ComfyUI/custom_nodes/ComfyUI-Login/requirements.txt \
    -r /ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt \
    -r /ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-TeaCache/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-WanVideoWrapper/requirements.txt \
	-r /ComfyUI/custom_nodes/comfyui-vrgamedevgirl/requirements.txt \
	-r /ComfyUI/custom_nodes/RES4LYF/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-GGUF/requirements.txt

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Start Server
CMD [ "/start.sh" ]