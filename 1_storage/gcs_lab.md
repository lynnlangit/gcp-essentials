### GCS Commands

To list buckets  
`gsutil ls`

To create a bucket  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To put a file in a bucket  
`gsutil cp test.txt gs://[bucket_name]`

To rename a bucket  
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To list bucket properties  
`gsutil ls -L gs://[bucket_name]`  
To list bucket permission  
`gsutil acl get gs://[bucket_name]`

To list files in a bucket  
`gsutil ls gs://[bucket_name]`