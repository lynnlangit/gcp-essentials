### IAM Commands

Note:  
`gloud iam...` -or- `gloud iam alpha` -or- `gloud iam beta`

To list all iam roles  
`gcloud iam roles list`  
To list custom iam roles for a project  
`gcloud iam roles list --project [projectName]`  

To assign a pre-built role to an iam user
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To verify your gcloud init settings, i.e. 'gcloud init...'  
`gcloud init...`  

To create a service account  
`gcloud iam service-accounts create [SA-NAME] --display-name "[SA-DISPLAY-NAME]"`  
To list services accounts  
`gcloud iam service-accounts list`  
To rename a service account  
`gcloud iam service-accounts update [SA-NAME]@[PROJECT-ID].iam.gserviceaccount.com --display-name [UPDATED-DISPLAY-NAME]"`

------

From - https://cloud.google.com/iam/docs/granting-changing-revoking-access#iam-get-policy-gcloud  

To get the policy for the project my-project in JSON format and save it to the user's home directory.  
`gcloud projects get-iam-policy my-project --format json > ~/policy.json`  

To grant the Owner role to user-1@gmail.com for the project my-project  

`gcloud projects add-iam-policy-binding my-project --member user:user-1@gmail.com --role roles/owner`

