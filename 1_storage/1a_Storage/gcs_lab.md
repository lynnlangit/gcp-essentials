### GCS Commands

To list buckets  
`gsutil ls`

To create a bucket  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To put a file in a bucket  
`gsutil cp test.txt gs://[bucket_name]`

To add a label to a bucket  
`gsutil label ch -l [KEY_1]:[VALUE_1] gs://[BUCKET_NAME]/`

To change the storage class  
`gsutil defstorageclass set [STORAGE_CLASS] gs://[BUCKET_NAME]`

To enable requester pays  
`gsutil requesterpays set on gs://[BUCKET_NAME]`

To enable lifecycle config for a bucket  
`gsutil lifecycle set [LIFECYCLE_CONFIG_FILE] gs://[BUCKET_NAME]`

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

To make an object publicly accessible  
`gsutil acl ch -u AllUsers:R gs://my-awesome-bucket/kitten.png`

To grant a user access to objects in a bucket  
`gsutil iam ch user:jane@gmail.com:objectCreator,objectViewer gs://my-awesome-bucket`

To view the IAM bucket policy for a bucket  
`gsutil iam get gs://[BUCKET_NAME]`

To add a member to a bucket level policy  
`gsutil iam ch [MEMBER_TYPE]:[MEMBER_NAME]:[ROLE] gs://[BUCKET_NAME]`

To remove a bucket  
`gsutil rm -r gs://my-awesome-bucket`