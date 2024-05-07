# check for a gpu
sudo lspci | grep -i "nvidia"

# check kernel version
uname -r

# check the driver kernel version
sudo apt-cache show linux-modules-nvidia- NVIDIA_DRIVER_VERSION -gcp

# check gpu availability
nvidia-smi 

# docs - install GPU drivers on GCE
https://cloud.google.com/compute/docs/gpus/install-drivers-gpu
