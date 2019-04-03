### IAM Commands

To list iam users  
`gsutil ls`

To create an iam user  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To list permissions for a pre-built iam role (i.e. 'owner'....)
`gsutil cp test.txt gs://[bucket_name]`

To assign a pre-built role to an iam user
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To verify your gcloud init settings, i.e. 'gcloud init...'  
`gsutil ls -L gs://[bucket_name]`  
To create a new gcloud instance profile  
`gsutil acl get gs://[bucket_name]`

