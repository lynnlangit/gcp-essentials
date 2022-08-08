# GSUTIL Example

## create a bucket
`gsutil mb gs://my-bucket`

## list buckets
`gsutil ls`

## list objects
`gsutil ls gs://my-bucket`

## get list of objects and file sizes
`gsutil du gs://my-bucket`

## upload file
`gsutil cp my-file.txt gs://my-bucket`

## delete file
`gsutil rm gs://my-bucket/my-file.txt`

## delete bucket
`gsutil rb gs://my-bucket`
