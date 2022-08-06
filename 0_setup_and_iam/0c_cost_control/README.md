# GCP Cost Control

Cost management is an important skill set for using GCP services. Effective cost control is implemented via a set of practices, patterns and tools.  Increasingly, GCP includes tools for this topic.  Shown below is a good starting point - an example of the GCP Billing Console.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-billing.png" width=900>

## Basic Tools and Links

- GCP Cost Control tools described - https://cloud.google.com/cost-management
- Cloud Billing onboarding checklist - https://cloud.google.com/billing/docs/onboarding-checklist
- View cost details for GCP - https://cloud.google.com/billing/docs/how-to/cost-table
- Online GCP service pricing calculator - https://cloud.google.com/products/calculator
- Short article, best practices for cost control - https://www.linkedin.com/pulse/gcp-cost-management-best-practices-kevin-johnson-/

## Some Key GCP Pricing Features

Google offers pricing features that help its users reduce their cloud costs:
- For Many Services (check documentation to verify which services are included).
  -  **Sustained-use discounts** — up to 30% off for workloads that run for most of the billing month on GCP services
  -  **Committed-use discounts** - up to 57% off if users commit to use an instance for a certain time period, with no upfront payment and with the flexibility to change instances during the commitment period
- For Google Compute Engine instance (VMs)  
  -  **Preemptible VMs** — up to 80% off for Virtual Machines (GCE instances) that they can be shut down at any time and replace with others
  -  **Per-second billing** — Google charges per second, which can add up to major savings when instances are frequently started and stopped.
  -  **Customizable machine types** — this feature lets users configure their own machine configurations. This can translate into significant savings if you need a machine with stronger capabilities, but the high-end instances offered by other providers are not an exact fit.
- For Google Cloud Storage buckets (file/blob storage)
  - **NearLine or ColdLine storage tiers** -  for archived data, which are significantly cheaper than ordinary storage and offer fast access.

## Control Storage Costs
- :cloud: Best practices for controlling cloud storage (bucket) costs - [link](https://cloud.google.com/blog/products/storage-data-transfer/best-practices-for-cloud-storage-cost-optimization)

## Control Compute Costs

- 5️⃣ Article: "5 best practices for controlling compute engine costs" - [link](https://cloud.google.com/blog/products/compute/5-best-practices-compute-engine-cost-optimization)
- ❓ Example BQ Cloud Billing queries - [link](https://cloud.google.com/billing/docs/how-to/bq-examples)
- 📋 Checklist: "GKE Scaling Best Practices: - [link](https://cloud.google.com/architecture/best-practices-for-running-cost-effective-kubernetes-applications-on-gke#summary_of_best_practices)
- 📖 Docs "GKE Cost Optimization Options (HPA, VPA, more...) - [link](https://cloud.google.com/architecture/best-practices-for-running-cost-effective-kubernetes-applications-on-gke#gke_cost-optimization_features_and_options)
- 📖 Docs "Reduce GKE Costs by Scaling Down Clusters" - [link](https://cloud.google.com/architecture/reducing-costs-by-scaling-down-gke-off-hours)

## Analyze and Control Costs

- 🔑 IAM roles for Cloud Billing API - [link](https://cloud.google.com/billing/v1/how-tos/access-control)
- 👀 Viz costs over time - [link](https://cloud.google.com/billing/docs/how-to/visualize-data)

----

## Other Tools and Patterns

- :muscle: Tutorial: Understand and analyze cloud costs - [link](https://cloud.google.com/blog/topics/developers-practitioners/understanding-and-analyzing-your-google-cloud-costs)
- 📘 Automated response to budget alerts on GCP - [link](https://cloud.google.com/billing/docs/how-to/notify)
- 📖 Become a cost control guru 'how to' - [link](https://gcloud.devoteam.com/blog/how-to-become-a-cloud-cost-control-guru-on-gcp/)
- :muscle: Practice - Cloud Quest on setting up cost control services for GCP - [link](https://www.cloudskillsboost.google/quests/97)