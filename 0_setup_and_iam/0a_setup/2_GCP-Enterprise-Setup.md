# Setup for Enterprise GCP Account

Basic Checklist - Set up GCP Enterprise Account --> [link](https://cloud.google.com/docs/enterprise/setup-checklist#checklist-title)

## Enterprise GCP Account Setup

The following are general setup steps for an enterprise GCP account:

### Identity and Organization

- Determine your **identity store** (G Suite, Federated Active Directory...)
    - Create a new domain or use Cloud Identity
- Create a new **GCP Organization** structure (see diagram below)
    - Determine membeship of **Super Admins** Group
    - Create Folders (optional) or Projects
    - Determine membership in **Project Admins** Groups
    - Populate 'Essential Contacts' for the each project (in 'IAM & Admin')

 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/resources.png" width="800">  

### Billing and Support
- Create a billing account using invoiced-based, business billing 
    - Understand billing account and payment profile types -[link](https://cloud.google.com/billing/docs/concepts#billing_account)
- Select and purchase GCP support (std, enhanced or premium) - [link](https://cloud.google.com/support/#support-plans)
- Associate the billing account with one or more Projects
    - Set up billing alerts for projects with a notification via pub/sub
    - Set up billing export to Big Query for billing analysis
- Visualize billing data - [link](https://cloud.google.com/billing/docs/how-to/visualize-data)
- Set up billing actions - [example](https://cloud.google.com/billing/docs/how-to/notify) - flow shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/billing-actions.png" width=600>

### Compliance and Organization

- Review and act using the 10-step 'compliance' section of the GCP console (requires setting up as a Google Cloud Orgnazation)
- Use `gcloud projects list --filter 'parent.id=[ORGANIZATION_ID] AND parent.type=organization` to view GCP object instances by organization

---

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

TIP: Verify that you using the intended GCP Project before you enable a service

## Select and Configure Repositories

- Application Source Code - choices include GitHub, GCP Repositories and others
- Service Configuration Code - use GCP Deployments, GCE images or Terraform templates
- Container Image Registry - choices include Google Container Registry, DockerHub, Quay.io and others
