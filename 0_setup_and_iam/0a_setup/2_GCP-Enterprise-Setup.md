# Setup for Enterprise GCP Account

## Enterprise GCP Account Setup

The following are general setup steps:
- Determine your identity store (G Suite, Federated Active Directory...)
- Create a new domain or use Cloud Identity
- Create a new GCP Organization
- Determine membeship of Super Admins Group
- Create Folders (optional) or Projects
- Determine membership in Project Admins Groups
- Create a billing account using invoiced-based, business billing
- Associate the billing account with one or more Projects
- Set up billing alerts for projects with a notification via pub/sub
- Set up billing export to Big Query for billing analysis

## Code & Code Editor

You can use the editor and language of your choice.  I am using VSCode and Python on a MacOS.
- Verify Python - I am using Python 2.7
- Install VSCode - do not need to install Git
    - install these extentions for VSCode: 
        - TensorFlowSnippets
        - BigQuery highlight syntax
        - material theme icons
        - Python
        - VS Code Jupyter Notebook viewer

## GCP SDK 
 
 You can use the included console in GCP to run GCP SDK (gcloud) commands or you can download and install the GCP SDK locally

 - Download,unzip, install and authenticate to GCP SDK
 - Verify with `gcloud auth list` or `gcloud config list`

 ## Enable APIs

 You will be using a number of GCP services.  Some services are enabled by default, however, for other services you will need explicitly enable API or service.  

TIP: Verify that you using the intended GCP Project before you enable a service:

## Select and Configure Repositories

- Application Source Code - choices include GitHub, GCP Repositories and others
- Service Configuration Code - use GCP Deployments, GCE images or Terraform templates
- Container Image Registry - choices include Google Container Registry, DockerHub, Quay.io and others