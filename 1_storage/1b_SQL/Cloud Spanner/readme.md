# Cloud Spanner

Spanner supports globally distributed transactional databases. 

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/spanner-sketchnote.png" width=1000>

- Read "What is Google Cloud Spanner?" - https://cloud.google.com/blog/topics/developers-practitioners/what-cloud-spanner
- Watch "How does Spanner work (interals) ?" - https://www.youtube.com/watch?v=nvlt0dA7rsQ
- Try Spanner using Google Codelabs - https://cloud.google.com/spanner/docs/labs?linkId=97409312
- Spanner includes query performance observability metrics via...
    - query visualizer - https://cloud.google.com/spanner/docs/tune-query-with-visualizer
    - query statistics - https://cloud.google.com/spanner/docs/query-stats-tables
    - transaction statistics - https://cloud.google.com/blog/products/databases/database-transaction-stats-in-spanner

## Spanner Tips

- Great list of 'Do's/Don'ts for Spanner' by @polleyg --> https://polleyg.dev/posts/spanner-tips/
- Spanner schema design best practices --> https://cloud.google.com/spanner/docs/schema-design
- Spanner SQL best practices --> https://cloud.google.com/spanner/docs/sql-best-practices
- How to write a commit timestamp for each insert and update operation --> https://cloud.google.com/spanner/docs/commit-timestamp
- Spanner timestamp bounds configuration options explained --> https://cloud.google.com/spanner/docs/timestamp-bounds

## Internals

- Detailed blog post "Internals of Spanner" - [link](https://blog.searce.com/internals-of-google-cloud-spanner-5927e4b83b36)
- Article "About Spanner's Query Optimizer" - [link](https://cloud.google.com/blog/products/databases/a-technical-overview-of-cloud-spanners-query-optimizer)
- About "True Time" and external time consistency in Spanner - [link](https://cloud.google.com/spanner/docs/true-time-external-consistency)
    - Image of GCP Spanner harware (from Google and also blog linked above) shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/true-time.jpg" width=800>


