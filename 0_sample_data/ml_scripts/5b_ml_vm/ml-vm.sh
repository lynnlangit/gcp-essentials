# from -- https://cloud.google.com/deep-learning-vm/docs/

# choose from 3 images - specify GPU info - can use GCP Marketplace
# TensorFlow -or- PyTorch -or- Base

# CPU-instance
export IMAGE_FAMILY="tf-latest-cpu" # image family from the previous step
export ZONE="us-west1-b"
export INSTANCE_NAME="my-instance"

gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --image-family=$IMAGE_FAMILY \
  --image-project=deeplearning-platform-release

# GPU-instance
export IMAGE_FAMILY="tf-latest-cpu" # image family from the previous step
export ZONE="us-west1-b"
export INSTANCE_NAME="my-instance"

gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --image-family=$IMAGE_FAMILY \
  --image-project=deeplearning-platform-release

# Jupyter lab
export INSTANCE_NAME="my-instance"
gcloud compute ssh $INSTANCE_NAME -- -L 8080:localhost:8080
# connect
http://localhost:8080