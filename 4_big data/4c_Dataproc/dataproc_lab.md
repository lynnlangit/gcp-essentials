### Dataproc Commands

To create a cluster    
`gcloud dataproc clusters create example-cluster`  

To submit a job  
`gcloud dataproc jobs submit spark --cluster example-cluster \`
` --class org.apache.spark.examples.SparkPi \`
`  --jars file:///usr/lib/spark/examples/jars/spark-examples.jar -- 1000 `

To update a cluster  
`gcloud dataproc clusters update example-cluster --num-workers 5`

To delete a cluster   
`gcloud dataproc clusters delete example-cluster`  

To delete associated GCS buckets    
`gsutil rm gs://bucket/subdir/**` 

To delete a table  
`bq rm -f -t [project_id]:[dataset].[table]`  
To delete a dataset  
`bq rm -r -f -d [project_id]:[dataset]`  

To create a cluster and install a Jupyter Notebook  
`gcloud dataproc clusters create cluster-name --project project-id --bucket bucket-name \`
`    --initialization-actions gs://dataproc-initialization-actions/jupyter/jupyter.sh`

