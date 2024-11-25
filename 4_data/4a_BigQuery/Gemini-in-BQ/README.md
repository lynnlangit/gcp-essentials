# About Gemini in BigQuery

Google's Gemini LLM is available for use in BigQuery. Shown below is the Data Canvas, one of the integrated Gemini + BQ feature areas.

<kbd><img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/bq-canvas.png"></kbd>

NOTE: To set up Gemini in your GCP Project for Big Query, see these detailed steps --> [link](https://cloud.google.com/gemini/docs/bigquery/set-up-gemini)

## Gemini for Big Query

Summary from Google's docs and below --> [link](https://cloud.google.com/gemini/docs/bigquery/overview)

1. Explore and understand your data with **data insights**. Generally available (GA) Data insights offers an automated, intuitive way to uncover patterns and perform statistical analysis by using insightful queries that are generated from the metadata of your tables. This feature is especially helpful in addressing the cold-start challenges of early data exploration. 

2. Discover, transform, query, and visualize data with **BigQuery data canvas**. (GA) Using natural language, you can find, join, and query table assets, visualize results, and seamlessly collaborate with others throughout the entire process. 

3. Use Gemini in BigQuery to **generate or suggest code in SQL or Python**, and to explain an existing SQL query. You can also use natural language queries to begin data analysis. To learn how to generate, complete, and summarize code, see the following documentation:
    - Use the SQL generation tool (GA)
    - Prompt to generate SQL queries (GA)
    - Complete a SQL query (Preview)
    - Explain a SQL query (GA)
    - Generate Python code (GA)
    - Python code completion (Preview)

4. Prepare data for analysis. (Preview) **Data preparation in BigQuery** gives you context aware, AI-generated transformation recommendations to cleanse data for analysis. 

5. Optimize your data infrastructure with **partitioning, clustering, and materialized view recommendations**. You can let BigQuery monitor your SQL workloads for opportunities to improve performance and reduce costs, also see the following documentation:
    - Manage partition and cluster recommendations (GA)
    - Manage materialized view recommendations (Preview)

6. Autotune and troubleshoot serverless Apache Spark workloads. (Preview) **Autotuning can automatically optimize Spark jobs** by applying configuration settings to a recurring Spark workload based on best practices and an analysis of prior workload runs. Advanced troubleshooting with Gemini in BigQuery can explain and surface job errors, and it can offer actionable recommendations to fix slow or failed jobs. 

7. Customize your SQL translations with translation rules. (Preview) Create **Gemini-enhanced translation rules to customize your SQL translations** when using the interactive SQL translator. You can describe changes to the SQL translation output using natural language prompts or specify SQL patterns to find and replace.

## Demo Data Canvas

Example (demo) from Google of the BQ (Gemni-integrated) Data Canvas is shown below.

<kbd><img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/bq-canvas-demo.png"></kbd>
