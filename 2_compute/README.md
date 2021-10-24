# GCP Compute Choices

### Chose IaaS, PaaS or SaaS for Compute

**🎨 Link to #GCPSketchnotes for Compute** --> https://thecloudgirl.dev/gcpcompute.html  

1. Decide which type of compute service object you want to work with - choices are...
- **Virtual Machines** (VMs) - infrastructure as-a-service
- **Containers** (usually Docker containers, can by other types, i.e. Singularity...) - infrastructure or platform as-a-service depending on which service you choose on GCP
- **Functions** (also called Serverless, sometimes called lambdas) - functions (software) as-a-service

2. Determine how you'd like to **orchestrate scaling** for your compute objects - choices are...
- You do **ALL** of it (you use scripts, tools, 3rd party products)
  - example: you manage a cluster of GCE VMs
- You do **SOME** of it (you use or extend GCP patterns, scripts, or services)
  - example: you configure a GKE (Kubernetes) cluster of Docker container images
- You do **NONE** of it -> GCP does it (you use GCP services)
  - example: you configure and deploy Cloud Functions
  
3. Use Tools (optional)
- **GCP Marketplace** - create GCE compute instances (VMs, Containers, etc...) from pre-configured images from the Marketplace
- **GCP Recomendations** - adjust the size of VMs based on GCP Recomendations.  These are displayed in the GCP Web UI as shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/vm-recomendations.png" width=600>

---
  
  
### Learn More
 - Huge list of GCE 'HOW TO' mini-labs - https://cloud.google.com/compute/docs/how-to
 - Article 'Mitigating cold starts' on Cloud Run - https://medium.com/google-cloud/3-solutions-to-mitigate-the-cold-starts-on-cloud-run-8c60f0ae7894
 - GCP Serverless short whitepaper -  https://cloud.google.com/serverless/whitepaper/

 ---
  
 Shown below is a grid which compares the capabilities of GCP compute services - from this [link](https://cloud.google.com/hosting-options#hosting-options)
  
![GCP Compute Grid](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/compute-grid.png)
  
 ---

## Compute Choices

Most all are for Virtual Machines (there are a couple of container solutions here as noted)

![GCP Compute Choices](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/compute-choices.png)

## Container Choices

All are for Docker Images and/or Kubernetes (K8)

![GCP Container Choices](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/container-choices.png)
