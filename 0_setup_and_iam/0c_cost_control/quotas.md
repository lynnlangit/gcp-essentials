## About Quotas

GCP mostly have quotas set by default. Quotas are set **per project**.  
Quotas are set in the `IAM` section.    
There are many types of quotas, in general, there are two approaches to quota type...

- allocation: number of instance (GCE, etc...)
- rate: number of calls to an API( BigQuery, etc...)

TIP: Use filters by type to narrow the list - example shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam/images/bq-quota.png" width=900>

### To check regional Quotas
`gcloud compute regions describe REGION`

### To check project Quotas
`gcloud compute project-info describe --project PROJECT_ID`

