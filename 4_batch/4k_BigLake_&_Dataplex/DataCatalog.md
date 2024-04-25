# Data Catalog

Data Catalog is a fully managed, scalable metadata management service within the GCP Dataplex set of services.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dc-gcp-overview.png" width=600>

## What it Does

Data Catalog provides three main functions:
- Searching for data entries for which you have access
- Tagging data entries with metadata
- Providing column-level security for BigQuery tables
- Leverage the results of a Cloud Data Loss Prevention (DLP) scan to identify sensitive data directly within Data Catalog in the form of tag templates.

## What and How to Index

Data Catalog can catalog asset metadata from different Google Cloud systems (shown below, from Google documentation).

- You can also use Data Catalog APIs to integrate with custom data sources.
- After your data is cataloged, you can add your own metadata to these assets using tags.
- Data Catalog handles [two types of metadata](https://cloud.google.com/data-catalog/docs/concepts/metadata): technical metadata and business metadata.
- It uses entry groups. Each is set of logically related entries together with Identity and Access Management policies that specify the users who can create, edit, and view entries within an entry group.
  - Entries are Cloud Storage buckets, Big Query datasets or Pub/Sub topics.


  


