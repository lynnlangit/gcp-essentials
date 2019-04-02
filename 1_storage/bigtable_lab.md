### BigTable Commands

To list tables
`gsutil ls`

To create a table  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To put a file in a table  
`gsutil cp test.txt gs://[bucket_name]`

To rename a table  
1. create a new bucket  
2. copy files from old bucket into new bucket  
`gsutil cp -r gs://[old_bucketname]/* gs://[new_bucket]` 
3. delete old bucket  
`gsutil rm -r gs://[bucket_name]`

To list table properties  
`gsutil ls -L gs://[bucket_name]`  
To list table permission  
`gsutil acl get gs://[bucket_name]`

To list values in a table  
`gsutil ls gs://[bucket_name]`