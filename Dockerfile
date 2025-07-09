# Base Image
FROM ls250824/comfyui-runtime:08072025 AS base

# Set Working Directory
WORKDIR /

# Copy Scripts and Configurations
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/provisioning-on-workspace.sh onworkspace/readme-on-workspace.sh / 
COPY --chmod=644 comfy.settings.json /ComfyUI/user/default/comfy.settings.json
COPY --chmod=664 /documentation/README_runpod.md /README.md
COPY --chmod=644 provisioning/ /provisioning
COPY --chmod=644 workflows/ /ComfyUI/user/default/workflows

# Install Required Packages
RUN pip3 install --no-cache-dir opencv-python diffusers psutil && \
    mkdir -p /ComfyUI/custom_nodes && \
    cd /ComfyUI/custom_nodes && \
    git clone https://github.com/ltdrdata/ComfyUI-Manager.git && \
    git clone https://github.com/rgthree/rgthree-comfy.git && \
	git clone https://github.com/welltop-cn/ComfyUI-TeaCache.git && \
    git clone https://github.com/liusida/ComfyUI-Login.git && \
    git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git && \
    git clone https://github.com/kijai/ComfyUI-KJNodes.git && \
    git clone https://github.com/ShmuelRonen/ComfyUI-FreeMemory.git && \
    git clone https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git && \
	git clone https://github.com/kijai/ComfyUI-WanVideoWrapper.git && \
	git clone https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative.git && \
	git clone https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel && \
	git clone https://github.com/quasiblob/ComfyUI-EsesImageAdjustments.git && \
	git clone https://github.com/quasiblob/ComfyUI-EsesImageResize.git && \
	git clone https://github.com/Zehong-Ma/ComfyUI-MagCache.git && \
	git clone https://github.com/ClownsharkBatwing/RES4LYF.git && \
	git clone https://github.com/BlenderNeko/ComfyUI_Noise.git && \
	git clone https://github.com/ChenDarYen/ComfyUI-NAG.git && \
	git clone https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git && \
	git clone https://github.com/Fannovel16/comfyui_controlnet_aux.git && \
	git clone https://github.com/bbaudio-2025/ComfyUI-SuperUltimateVaceTools.git && \
	git clone https://github.com/1038lab/ComfyUI-RMBG.git

# Install Dependencies for Cloned Repositories
RUN pip3 install --no-cache-dir \
    -r /ComfyUI/custom_nodes/ComfyUI-Login/requirements.txt \
    -r /ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt \
    -r /ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-TeaCache/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-WanVideoWrapper/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-MagCache/requirements.txt \
	-r /ComfyUI/custom_nodes/comfyui-vrgamedevgirl/requirements.txt \
    -r /ComfyUI/custom_nodes/comfyui_controlnet_aux/requirements.txt \
	-r /ComfyUI/custom_nodes/RES4LYF/requirements.txt \
	-r /ComfyUI/custom_nodes/ComfyUI-RMBG/requirements.txt
	
# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Start Server
CMD [ "/start.sh" ]