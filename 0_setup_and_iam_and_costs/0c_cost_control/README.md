# GCP Cost Control

Cost management is an important skill set for using GCP services. Effective cost control is implemented via a set of practices, patterns and tools.  Increasingly, GCP includes tools for this topic.  Shown below is a good starting point - an example of the GCP Billing Console.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-billing.png" width=900>

## Basic Tools and Links

- 🛠️ GCP Cost Control tools described - [link](https://cloud.google.com/cost-management#section-6)
- 📋 Cloud Billing onboarding checklist - [link](https://cloud.google.com/billing/docs/onboarding-checklist)
- 💰View cost details for GCP - [link](https://cloud.google.com/billing/docs/how-to/cost-table)
- ➕ Online GCP service pricing calculator - [link](https://cloud.google.com/products/calculator)
- 💸 Understand and Use custom GCP Recommendations - [link](https://cloud.google.com/recommender/docs/insights/using-insights)
- 🔖 Short article, best practices for cost control - [link](https://www.linkedin.com/pulse/gcp-cost-management-best-practices-kevin-johnson-/)

## Some Key GCP Pricing Features

Google offers pricing features that help its users manage and reduce their cloud costs:
- Flexible Payment Charging Cycles - more at [link](https://cloud.google.com/billing/docs/how-to/billing-cycle)
  - **Monthly** - for invoiced or self-serve billing cycle types
  - **Threshold** - when your account spend reaches a pre-defined level (for self-serve cycle types)
- For Many Services (check documentation to verify which services are included).
  -  **Sustained-use discounts** — up to 30% off for workloads that run for most of the billing month on GCP services
  -  **Committed-use discounts** - up to 57% off if users commit to use an instance for a certain time period, with no upfront payment and with the flexibility to change instances during the commitment period - more at [link](https://cloud.google.com/billing/docs/how-to/cud-analysis) - report view example shown below
- For Google Compute Engine instance (VMs)  
  -  **Preemptible VMs** — up to 80% off for Virtual Machines (GCE instances) that they can be shut down at any time and replace with others
  -  **Per-second billing** — Google charges per second, which can add up to major savings when instances are frequently started and stopped.
  -  **Customizable machine types** — this feature lets users configure their own machine configurations. This can translate into significant savings if you need a machine with stronger capabilities, but the high-end instances offered by other providers are not an exact fit.
- For Google Cloud Storage buckets (file/blob storage)
  - **NearLine or ColdLine storage tiers** -  for archived data, which are significantly cheaper than ordinary storage and offer fast access.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/images/cud-gcp.png" width=800>

----

## Cost Control by Service

Sections for key services, organized by service group type - links to additional pages in this repo.  
- Control Storage Costs - GCS Buckets - [link](https://github.com/lynnlangit/gcp-essentials/tree/master/0_setup_and_iam_and_costs/0c_cost_control/02_data-costs)
- Control Compute Costs - GCE VMs / GKE K8 - [link](https://github.com/lynnlangit/gcp-essentials/tree/master/0_setup_and_iam_and_costs/0c_cost_control/01_compute-costs)
- Control BigTable and BigQuery Costs - DW / NoSQL - [link](https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/0c_cost_control/02_data-costs/database-costs.md)

---


