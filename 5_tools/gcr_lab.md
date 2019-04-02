### GCR Commands

see this -- https://cloud.google.com/container-registry/docs/quickstart

To list GCRs  
`gsutil ls`

To create a GCR  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To publsh a docker image into GCR 
    (build the lynnlangit\blastn-jupyter docker image from dockerhub locally, then push to GCR)
`gsutil cp test.txt gs://[bucket_name]`

To pull an image from GCR and run GKE

To verify permissions on a GCR image
`gsutil ls gs://[bucket_name]`