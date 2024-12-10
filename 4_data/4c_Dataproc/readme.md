# Dataproc Examples

For more examples see my GitHub Repo (and companion to course 'Learning Hadoop') at [link](https://github.com/lynnlangit/learning-hadoop-and-spark)

## Templates and Samples

- GCP added `Dataproc Hub` which is a customized JupyterHub server. Admins configure and create Dataproc Hub instances that can spawn single-user Dataproc clusters to host Jupyter and JupyterLab notebook environments - [link](https://cloud.google.com/dataproc/docs/tutorials/dataproc-hub-admins)
- On GitHub "Dataproc Templates" for date movement scenarios (GCS2BQ, BigTable2BQ, etc...) - [link](https://github.com/GoogleCloudPlatform/dataproc-templates/blob/main/README.md)

## Dataproc Serverless

- ***NEW: 'Auto-tune Dataproc Spark jobs with Google Gemini'*** - [link](https://cloud.google.com/dataproc-serverless/docs/concepts/autotuning) and [link](https://cloud.google.com/gemini/docs/bigquery/overview#spark)
- From Google's docs: *"Autotune and troubleshoot Spark jobs
Autotuning can help you optimize your Spark workloads for performance and resilience. Instead of manually configuring settings, Gemini in BigQuery can apply best practices for recurring workloads and then help you understand and monitor your autotuning. Advanced troubleshooting provides natural language answers to "What was autotuned?", "What is happening now?", and "What can I do about it?"*

Using Dataproc Serverless, you can run Spark workloads as **BATCHES**...
- without a provisioned cluster (i.e. per batch job)
- using Pyspark, Spark SQL, Spark R or Spark Java
- auto-scaling is the default
- uses Spark resouce manager (NOT YARN)
- with custom conatiners
- with a BigQuery connector

Or as **SESSIONS** via VertexAI Notebooks...
- setup in a VertexAI notebook (form launches when you click on 'serverless Spark' button)
- use Jupyter lab launcher - example [here](https://cloud.google.com/dataproc-serverless/docs/quickstarts/jupyterlab-sessions)

Limitations...
- no GPUs
- batch only (not interactive)

### More Info
- Documentation: More info here --> https://cloud.google.com/dataproc-serverless/docs/overview
- Samples: Serverless Spark Workshop --> https://github.com/GoogleCloudPlatform/serverless-spark-workshop
- How To: Optimize Dataproc Jobs --> https://cloud.google.com/blog/products/data-analytics/dataproc-job-optimization-how-to-guide

