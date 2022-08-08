# GCP Cost Control

Cost management is an important skill set for using GCP services. Effective cost control is implemented via a set of practices, patterns and tools.  Increasingly, GCP includes tools for this topic.  Shown below is a good starting point - an example of the GCP Billing Console.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-billing.png" width=900>

## Basic Tools and Links

- 🛠️ GCP Cost Control tools described - [link](https://cloud.google.com/cost-management)
- 📋 Cloud Billing onboarding checklist - [link](https://cloud.google.com/billing/docs/onboarding-checklist)
- 💰View cost details for GCP - [link](https://cloud.google.com/billing/docs/how-to/cost-table)
- ➕ Online GCP service pricing calculator - [link](https://cloud.google.com/products/calculator)
- 🔖 Short article, best practices for cost control - [link](https://www.linkedin.com/pulse/gcp-cost-management-best-practices-kevin-johnson-/)

## Some Key GCP Pricing Features

Google offers pricing features that help its users reduce their cloud costs:
- For Many Services (check documentation to verify which services are included).
  -  **Sustained-use discounts** — up to 30% off for workloads that run for most of the billing month on GCP services
  -  **Committed-use discounts** - up to 57% off if users commit to use an instance for a certain time period, with no upfront payment and with the flexibility to change instances during the commitment period - more at [link](https://cloud.google.com/billing/docs/how-to/cud-analysis)
- For Google Compute Engine instance (VMs)  
  -  **Preemptible VMs** — up to 80% off for Virtual Machines (GCE instances) that they can be shut down at any time and replace with others
  -  **Per-second billing** — Google charges per second, which can add up to major savings when instances are frequently started and stopped.
  -  **Customizable machine types** — this feature lets users configure their own machine configurations. This can translate into significant savings if you need a machine with stronger capabilities, but the high-end instances offered by other providers are not an exact fit.
- For Google Cloud Storage buckets (file/blob storage)
  - **NearLine or ColdLine storage tiers** -  for archived data, which are significantly cheaper than ordinary storage and offer fast access.
  
## Cost Control by Service

Sections for key services, organized by service type....

### Control Storage Costs

Google Cloud Storage offers 4 storage classes with progressively lower storage costs, but **higher retrieval costs**: 
- **Standard** (frequently used data) - this is the default storage class
- **Nearline** (infrequently used data) - accessed once a month or less
- **Coldline** (rarely used data) - accessed once a year or less
- **Archive** (long term archival) - accessed only for exceptions (DR, etc...)

Cloud Storage pricing is based on the following components:
- Data storage — quantity of data stored in Google Cloud Storage buckets
- Network usage — amount of data transferred to or from storage
- Operations use — actions performed on data within Google Cloud Storage
- Retrieval & early deletion fees — only applies to information saved in the three cold storage tiers (Nearline, Coldline, Archive)

GCP Guidance for Storage Costs and Compliance
- :cloud: Summary of Best practices for controlling cloud storage (bucket) costs - [link](https://cloud.google.com/blog/products/storage-data-transfer/best-practices-for-cloud-storage-cost-optimization)
- Use these top 3 best practices to reduce costs for Google Cloud Storage:
  - Use **storage lifecycle policies** — tag specific items or buckets using a rule that automatically delete objects, or change storage classes, based on conditions you specify (age of object, etc...)
  - Add a **bucket lock** attribute to minimize the chance for accidental deletion and to prevent issues with compliance standards like FINRA and SEC.
  - Use of **best-fit storage tier** — Long-term storage is less expensive in terms of ongoing storage costs, but there are additional fees incurred if you need to access the data regularly. There are also minimum periods for data storage, so you may not be able to delete data if you realize it is not needed.

### Control Compute Costs

- 5️⃣ Article: "5 best practices for controlling compute engine costs" - [link](https://cloud.google.com/blog/products/compute/5-best-practices-compute-engine-cost-optimization)
- ❓ Example BQ Cloud Billing queries - [link](https://cloud.google.com/billing/docs/how-to/bq-examples)
- 📋 Checklist: "GKE Scaling Best Practices: - [link](https://cloud.google.com/architecture/best-practices-for-running-cost-effective-kubernetes-applications-on-gke#summary_of_best_practices)
- 📖 Docs "GKE Cost Optimization Options (HPA, VPA, more...) - [link](https://cloud.google.com/architecture/best-practices-for-running-cost-effective-kubernetes-applications-on-gke#gke_cost-optimization_features_and_options)
- 📖 Docs "Reduce GKE Costs by Scaling Down Clusters" - [link](https://cloud.google.com/architecture/reducing-costs-by-scaling-down-gke-off-hours)

### Control BigTable and BigQuery Costs

- Docs: "BigTable Cost Control" - [link](https://cloud.google.com/bigtable/pricing)
- Article: "Your Guide to BigQuery Cost" - [link](https://blog.coupler.io/bigquery-cost/)

----

## Analyze and Control Costs

- 🔑 IAM roles for Cloud Billing API - [link](https://cloud.google.com/billing/v1/how-tos/access-control)
- 👀 Viz costs over time using Big Query and Data Studio - [link](https://cloud.google.com/billing/docs/how-to/visualize-data)
- 📖 Implement Cloud Logging Cost Control - [link](https://cloud.google.com/architecture/stackdriver-cost-optimization#implementing_cost_controls)

----

## Other Tools and Patterns

- :muscle: Tutorial: Understand and analyze cloud costs - [link](https://cloud.google.com/blog/topics/developers-practitioners/understanding-and-analyzing-your-google-cloud-costs)
- 📘 Automated response to budget alerts on GCP - [link](https://cloud.google.com/billing/docs/how-to/notify)
- 📖 Become a cost control guru 'how to' - [link](https://gcloud.devoteam.com/blog/how-to-become-a-cloud-cost-control-guru-on-gcp/)
- :muscle: Practice - Cloud Quest on setting up cost control services for GCP - [link](https://www.cloudskillsboost.google/quests/97)
- 📖 Article: "Resouce Labeling Best Practices for GCP" (includes 'labels vs tags' quoted below...) - [link](https://www.doit-intl.com/google-cloud-platform-resource-labeling-best-practices/)
  - *"...The difference now is that **tags** are a way to group resources together to have a network policy applied to them versus a **label** that groups resources together for billing and searching purposes..."*
