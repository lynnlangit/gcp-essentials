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

### BigQuery Table Types

BigQuery supports several types of external data sources (or tables). For external tables metadata and schema is stored in BigQuery, but data is stored outside of BigQuery.  BG also support linked datasets which contain links to tables. The possible types are shown in the screenshot and listed below.  

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/biglake-table.png" width=900>

- [External Tables](https://cloud.google.com/bigquery/docs/external-tables) 
    - query **structured** data is stored in Cloud Storage or another GCP service 
- [Object Tables](https://cloud.google.com/bigquery/docs/object-table-introduction) 
    - query **unstructured** data is stored in Cloud Storage
    - can be used in image evaluation / Machine Learning scenarios with these [limitations](https://cloud.google.com/bigquery/docs/object-table-inference#limitations)
    - data can be analyzed used remote functions, such as CloudRun or Cloud Functions
    - external connection must be configured
- [BigLake Tables](https://cloud.google.com/bigquery/docs/biglake-intro) - example highlighed in screen shot shown above
    - query **structured data stored externally with access delegation**
    - required configuration of an external connector
    - if stored in Cloud Storage, can use fine-grained security and data masking
    - if stored in AWS S3 or Azure Blob Storage, also requires use of [BigQuery Omni](https://cloud.google.com/bigquery/docs/omni-introduction) service
- [Linked Dataset](https://cloud.google.com/bigquery/docs/analytics-hub-introduction#linked_datasets)
    - query a read-only BigQuery dataset via a **symbolic link to a shared dataset**
    - subscribe to an AnalyticsHub BQ listing to create a linked dataset in your project and not a copy of the dataset
    - subscribers can read the data but cannot add or update objects within it.

#### More Info about BQ External Tables

- Article "Intro to External Data Sources" - [link](https://cloud.google.com/bigquery/docs/external-data-sources)
- Chart "External Data Source Feature Comparison" - [link](https://cloud.google.com/bigquery/docs/external-data-sources#external_data_source_feature_comparison)
- More about BigQuery BigLake - [link](https://github.com/lynnlangit/gcp-essentials/blob/master/4_big%20data_and_genomics/4k_BigLake_%26_Dataplex/BigLake.md)
-----

### BQ Machine Learning

- BQ Machine Learning - [link](https://cloud.google.com/bigquery/docs/bigqueryml-intro)
- Example notebooks, see my GCP ML repo - [link](https://github.com/lynnlangit/gcp-ml/tree/master/notebooks/03_BQ-ML)

## Tools and Cost Optimization

- Cloud DLP for BigQuery - [link](https://cloud.google.com/bigquery/docs/scan-with-dlp)
- BigQuery open source tools - [link](https://github.com/GoogleCloudPlatform/bigquery-utils)
- Choose the best-fit BigQuery Edition to optimize costs (summary shown below) - [link](https://cloud.google.com/bigquery/docs/editions-intro) 
- Use BigQuery Auto-scaling (w/slots) - [link](https://cloud.google.com/bigquery/docs/slots-autoscaling-intro)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/bq-editions.png" width=800>
