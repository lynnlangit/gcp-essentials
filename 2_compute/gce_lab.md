### GCE Commands

To list instances  
`gsutil ls`

To create an instance  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To SSH to an instance
`gsutil cp test.txt gs://[bucket_name]`

To rename an instance  
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To list instance properties  
`gsutil ls -L gs://[bucket_name]`  
To list instance permission  
`gsutil acl get gs://[bucket_name]`

To upload files into an instance
`gsutil ls gs://[bucket_name]`