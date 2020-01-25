### Dataproc Commands

To create a cluster    
`gcloud dataproc clusters create example-cluster`  

To submit an example Spark job that calculates digits of pi   
`gcloud dataproc jobs submit spark --cluster example-cluster \`  
` --class org.apache.spark.examples.SparkPi \`  
`  --jars file:///usr/lib/spark/examples/jars/spark-examples.jar \`   
`  --1000 `

To update a cluster  
`gcloud dataproc clusters update example-cluster --num-workers 5`

To delete a cluster   
`gcloud dataproc clusters delete example-cluster`  

To create a cluster and install a Jupyter Notebook  
`gcloud dataproc clusters create cluster-name --project project-id --bucket bucket-name \`
`    --initialization-actions gs://dataproc-initialization-actions/jupyter/jupyter.sh`

