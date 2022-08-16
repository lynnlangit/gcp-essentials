## About Quotas and Billing Automation

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
- :muscle: Practice - Cloud Quest on setting up cost control services for GCP - [link](https://www.cloudskillsboost.google/quests/97)
- 📖 Article: "Resouce Labeling Best Practices for GCP" (includes 'labels vs tags' quoted below...) - [link](https://www.doit-intl.com/google-cloud-platform-resource-labeling-best-practices/)
  - *"...The difference now is that **tags** are a way to group resources together to have a network policy applied to them versus a **label** that groups resources together for billing and searching purposes..."*
