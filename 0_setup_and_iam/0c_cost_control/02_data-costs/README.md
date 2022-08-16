# Control Bucket Costs

### Control Storage Costs - GCS Buckets

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
