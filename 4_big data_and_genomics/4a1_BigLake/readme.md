# BigLake

BigLake is a unified storage engine that simplifies data access for data warehouses and lakes by providing **uniform fine-grained access control** across multi-cloud storage and open formats. 
- BigLake extends BigQuery's fine-grained row- and column-level security to tables on data resident object stores such as Amazon S3, Azure Data Lake Storage Gen2, and Google Cloud Storage. 
- BigLake decouples access to the table from the underlying cloud storage data through access delegation. This feature helps you to securely grant **row- and column-level access** to users and pipelines in your organization without providing them full access to the table.  Architecture shown below.

<img src="https://cloud.google.com/bigquery/images/biglake_arch.png" width=800>

## Features

### Fine grained security controls
BigLake eliminates the need to grant file level access to end users. Apply table, row, column level security policies on object store tables similar to existing BigQuery tables.

### Multi-compute analytics
Maintain a single copy of data and make it uniformly accessible across Google Cloud and open-source engines, including BigQuery, Vertex AI, Spark, Presto, Trino, and Hive using BigLake connectors. Centrally manage security policies in one place, and have it consistently enforced across the query engines by the API interface built into the connectors.

### Multi-cloud governance
Discover all BigLake tables, including those defined over Amazon S3, Azure data lake Gen 2 in Data Catalog. Configure fine grained access control and have it enforced across clouds when querying with BigQuery Omni.

### Performance acceleration
Achieve industry leading performance over data lake tables on Google Cloud, AWS and Azure, powered by proven BigQuery infrastructure.

### Built on open formats
Gain access to the most popular open data formats including Parquet, Avro, ORC, CSV, JSON. The API serves multiple compute engines through Apache Arrow.

## Use it

Quickstart - external tables and BigQuery --> https://cloud.google.com/bigquery/docs/biglake-quickstart
