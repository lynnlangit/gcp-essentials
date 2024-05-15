# This script verifies the GPU setup in the system

# Check if an NVIDIA GPU is present in the system
sudo lspci | grep -i "nvidia"

# Display the current kernel version of the system
uname -r

# Check the version of the NVIDIA driver kernel module installed
sudo apt-cache show linux-modules-nvidia- NVIDIA_DRIVER_VERSION -gcp

# Display the status and usage of NVIDIA GPU(s)
nvidia-smi 

# Provide additional resources for installing or troubleshooting GPU drivers on GCE
# Documentation link: https://cloud.google.com/compute/docs/gpus/install-drivers-gpu
