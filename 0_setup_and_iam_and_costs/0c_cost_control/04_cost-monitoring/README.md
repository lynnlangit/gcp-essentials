## About Quotas and Billing Automation

## Analyze and Control Costs
- 📖 Best Practices for GCP Cost Optimization - [link](https://cloud.google.com/architecture/framework/cost-optimization)
- 🔑 IAM roles for Cloud Billing API - [link](https://cloud.google.com/billing/v1/how-tos/access-control)
- 💰 Set budget alerts on GCP services - [link](https://cloud.google.com/billing/docs/how-to/budgets)
- :book: Doc "GCP Service Quotas - [link](https://cloud.google.com/compute/quotas) and also this page - [link](https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam/0c_cost_control/quotas.md)
- 👀 Viz costs over time using Big Query and Data Studio - [link](https://cloud.google.com/billing/docs/how-to/visualize-data)
- 📖 Implement Cloud Logging Cost Control - [link](https://cloud.google.com/architecture/stackdriver-cost-optimization#implementing_cost_controls)
- 🔑  API of Google Cloud Pricing Calculator - [link](https://cloud.google.com/billing/docs/how-to/cost-estimates-using-api)

----

GCP mostly have quotas set by default. Quotas are set **per project**.  
Quotas are set in the `IAM` section.    
There are many types of quotas, in general, there are two approaches to quota type...

- allocation: number of instance (GCE, etc...)
- rate: number of calls to an API( BigQuery, etc...)

TIP: Use filters by type to narrow the list - example shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/images/bq-quota.png" width=900>

### To check regional Quotas
`gcloud compute regions describe REGION`

### To check project Quotas
`gcloud compute project-info describe --project PROJECT_ID`

----

### Pattern for Using Billing API

Shows using GCP Pub/Sub as event bus for billing notification alerts

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/images/budget-api.png" width=500>

### Other Tools and Patterns

- :muscle: Tutorial: Understand and analyze cloud costs - [link](https://cloud.google.com/blog/topics/developers-practitioners/understanding-and-analyzing-your-google-cloud-costs)
- 📘 Automated response to budget alerts on GCP - [link](https://cloud.google.com/billing/docs/how-to/notify)
- 📖 Become a cost control guru 'how to' - [link](https://gcloud.devoteam.com/blog/how-to-become-a-cloud-cost-control-guru-on-gcp/)
- 🛠️ Paper and On-line tool 'Practical Estimation of Cloud Storage Costs for Clinical Genomic Data' - [link](https://github.com/lynnlangit/TeamTeri/blob/master/5_Public_Cloud_Genomics/storage-costs.pdf)
- :muscle: Practice - Cloud Quest on setting up cost control services for GCP - [link](https://www.cloudskillsboost.google/quests/97)
- 📖 Article: "Resouce Labeling Best Practices for GCP" (includes 'labels vs tags' quoted below...) - [link](https://www.doit-intl.com/google-cloud-platform-resource-labeling-best-practices/)
  - *"...The difference now is that **tags** are a way to group resources together to have a network policy applied to them versus a **label** that groups resources together for billing and searching purposes..."*
