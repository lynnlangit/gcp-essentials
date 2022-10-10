# Command Line Tools for Storage

To script GCP storage service instances, use either the service-specific tools...  
i.e. for BigQuery use `bq`, --OR-- use `gcloud {serviceName} {action} {params}`.   See links to examples below.

## Cloud Storage

- `gcloud storage...` (for Google Cloud Storage/GCS)- [examples](https://github.com/lynnlangit/gcp-essentials/blob/master/1_storage/1a_Storage/gcloud-gsutil/gcloud-storage.md) --or-- 
- `gsutil` - [link](https://cloud.google.com/storage/docs/discover-object-storage-gsutil) and [examples](https://github.com/lynnlangit/gcp-essentials/tree/master/1_storage/1a_Storage/gcloud-gsutil)

## BigQuery, BigTable or Filestore

- `bq` (for BigQuery) - [examples](https://github.com/lynnlangit/gcp-essentials/blob/master/4_big%20data_and_genomics/4a_BigQuery/bq_lab.md)
- `cbt` (for BigTable) - [examples](https://github.com/lynnlangit/gcp-essentials/blob/master/1_storage/1c_Bigtable/bigtable_lab.md)
- `gcloud filestore create | instances describe...` (for Filestore) - [link](https://cloud.google.com/filestore/docs/create-instance-gcloud) and [examples](https://github.com/lynnlangit/gcp-essentials/blob/master/1_storage/1d_Filestore/filestore_lab.md)
