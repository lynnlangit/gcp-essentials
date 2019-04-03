### GCF commands

To list functions  
`gcloud functions list`  

To create a function  
1. get sample code (on cloud shell)  
`git clone https://github.com/GoogleCloudPlatform/python-docs-samples.git`  
2. change directory  
`cd python-docs-samples/functions/helloworld/`  
3. deploy the function  
`gcloud functions deploy hello_get --runtime python37 --trigger-http --region=us-east1`  
**note**: The function name must be the same as the function in the code in order for it to run (i.e. hello_get)

To list function properties  
`gcloud functions describe [function_name]--region=us-east1`  

To trigger a function (test it)  
`gcloud functions call [function_name] --region=us-east1`  

To delete a function  
`gcloud functions delete [function_name] --region=us-east1`  
example:  
`gcloud functions delete hello_get --region=us-east1` (delete the previous function)  

To trigger a function based on file uploaded into a bucket  
1. create a function that uses the trigger type: google.storage.object.finalize  
   1. make sure you're in the home directory
      `cd`  
   2. change to the gcs python functions directory  
      `cd python-docs-samples/functions/gcs`  
   3. deploy the function  
      `gcloud functions deploy hello_gcs_generic --runtime python37 --trigger-resource [bucket_name] --trigger-event google.storage.object.finalize --region=us-east1`  
2. upload a file to the bucket  
`gsutil cp main.py gs://[bucket_name]`  
3. check logs to see if the function fired  
`gcloud logging read "resource.type=cloud_function" --limit=1`  