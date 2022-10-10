# What is the gcloud storage command set?

Using the new `gcloud storage ...` command set is an alternative to using `gsutil` commands to work with GCS (Google Cloud Storage) object instances (buckets, folders, files).  

(From GCP [Docs](https://cloud.google.com/blog/products/storage-data-transfer/new-gcloud-storage-enables-super-fast-data-transfers)) *"Gcloud storage takes large files and breaks them down into pieces, so that transfers can best take advantage of the available bandwidth. What’s new in `gcloud storage` (vs `gsutil`) is its **parallelization strategy**, which treats task management as a graph problem, where each unit of work is treated as a node, and each dependency as an edge. This strategy allows **more work to be done in parallel** with far less overhead. Under the hood, gcloud storage also benefits from a new hashing library that enables faster integrity checking. It can also adjust its own settings based on the workload and local machine size to optimize for performance."* 

## Performance Comparision

When transferring **100 files** that were 100MB in size
- `gcloud storage` was **79% faster** than `gsutil` on download and 33% faster on upload
-  with both using a composite upload strategy, where a file was broken up and uploaded as separate files, and then recombined into a single file. 

When transferring **a single large file**, the difference is even more pronounced
- With a 10GB file, `gcloud storage` was **94% faster** than `gsutil` on download and 57% faster on upload.

To quickly try it out
```
gcloud storage ls gs://pub
gcloud storage cp -r gs://pub/shakespeare/ .
```

## gcloud storage syntax examples

### list buckets and objects
`gcloud storage ls`

### create bucket
`gcloud storage buckets create my-bucket`

### list objects
`gcloud storage ls my-bucket`

### list object contents
`gcloud storage cat my-bucket/my-file.txt`

### upload file
`gcloud storage cp my-bucket/my-file.txt`

### move/rename file
`gcloud storage mv my-bucket/my-file.txt  my-new-filename.txt`

### delete file
`gcloud storage rm my-bucket/my-file.txt`

### delete bucket
`gcloud storage buckets delete my-bucket`
