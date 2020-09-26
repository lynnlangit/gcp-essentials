# GCP Compute Choices

First, you'll need to decide which object you want to work with - choices are
- Virtual Machines (VMs)
- Containers (usually Docker containers, can by other types, i.e. Singularity...)
- Functions (also called Serverless, sometimes called lambdas)

Second, you need to determine how you'd like to orchestrate scaling for your objects - choices include
- You do all of it (you use scripts, tools, 3rd party products)
  - example: you manage a cluster of GCE VMs
- You do part of it (you use or extend GCP patterns, scripts, or services)
  - example: you configure a GKE (Kubernetes) cluster of Docker container images
- GCP does it (you use GCP services)
  - example: you configure and deploy Cloud Functions

## Compute Choices

Most all are for Virtual Machines (there are a couple of container solutions here as noted)

![GCP Compute Choices](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/compute-choices.png)

## Container Choices

All are for Docker Images and/or Kubernetes (K8)

![GCP Container Choices](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/container-choices.png)
