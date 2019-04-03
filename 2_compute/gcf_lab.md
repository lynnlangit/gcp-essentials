
### GCF commands

To list functions  
`gmsutil ls`

To create a function  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To trigger a function (test it)
`gsutil cp test.txt gs://[bucket_name]`

To rename a funciton  
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To list function properties  
`gsutil ls -L gs://[bucket_name]`  
To list function permission  
`gsutil acl get gs://[bucket_name]`

To trigger a function based on file uploaded into a bucket 
`gsutil ls gs://[bucket_name]`