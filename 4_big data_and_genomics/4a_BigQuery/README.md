# BigQuery Links

## Basics

- Useful introductory BigQuery article - [link](https://medium.com/google-cloud/bigquery-explained-querying-your-data-9e017f2714a3)
- BigQuery JOINS - [link](https://medium.com/google-cloud/bigquery-explained-working-with-joins-nested-repeated-data-1941646ccb5b)
- BigQuery for Data Warehousing - [link](https://cloud.google.com/solutions/bigquery-data-warehouse)
- Build a Marketing DW on BQ - [link](https://cloud.google.com/solutions/marketing-data-warehouse-on-gcp)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/4_big%20data_and_genomics/4a_BigQuery/bq-arch.png" width=700>

## Patterns and Examples

### General Query and Data Warehousing

- BigQuery Metadata Queries - [link](https://medium.com/google-cloud/bigquery-dataset-metadata-queries-8866fa947378)
- BigQuery Cookbook - [link](https://support.google.com/analytics/answer/4419694?hl=en)
- Avoid SQL anti-patterns - [link](https://cloud.google.com/bigquery/docs/best-practices-performance-patterns)
- Reference Pattersn - [link](https://cloud.google.com/bigquery/docs/best-practices-performance-patterns)

### BigQuery Dataset (Table) Types

BigQuery supports several types of external data sources (or tables). For external tables metadata and schema is stored in BigQuery, but data is stored outside of BigQuery.  BG also support linked datasets. The possible types are as follows:  

- [External Tables](https://cloud.google.com/bigquery/docs/external-tables) 
    - structured data is stored in Cloud Storage or another GCP service 
- [Object Tables](https://cloud.google.com/bigquery/docs/object-table-introduction) 
    - unstructured data is stored in Cloud Storage
    - often used in Machine Learning scenarios
    - external connection must be configured
- [BigLake Tables](https://cloud.google.com/bigquery/docs/biglake-intro)
    - query structured data stored externally with access delegation
    - required configuration of an external connector
    - if stored in Cloud Storage, can use fine-grained security and data masking
    - if stored in AWS S3 or Azure Blob Storage, also requires use of [BigQuery Omni](https://cloud.google.com/bigquery/docs/omni-introduction) service
- [Linked Dataset](https://cloud.google.com/bigquery/docs/analytics-hub-introduction#linked_datasets)
    - a read-only BigQuery dataset that serves as a symbolic link to a shared dataset
    - subscribe to an AnalyticsHub BQ listing to create a linked dataset in your project and not a copy of the dataset
    - subscribers can read the data but cannot add or update objects within it.

#### More Info about BQ External Tables

- Article "Intro to External Data Sources" - [link](https://cloud.google.com/bigquery/docs/external-data-sources)
- Chart "External Data Source Feature Comparison" - [link](https://cloud.google.com/bigquery/docs/external-data-sources#external_data_source_feature_comparison)

-----

### BQ Machine Learning

- BQ Machine Learning - [link](https://cloud.google.com/bigquery/docs/bigqueryml-intro)
- Example notebooks, see my GCP ML repo - [link](https://github.com/lynnlangit/gcp-ml/tree/master/notebooks/03_BQ-ML)

## Tools

- Cloud DLP for BigQuery - [link](https://cloud.google.com/bigquery/docs/scan-with-dlp)
- BigQuery open source tools - [link](https://github.com/GoogleCloudPlatform/bigquery-utils)
