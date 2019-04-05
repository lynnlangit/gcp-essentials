### GCR Commands

see this -- https://cloud.google.com/container-registry/docs/quickstart

Prereqs:
--enable the GCR API
--install Docker and verify
`docker run busybox date` (should return time/date)

To build the example docker image  
`docker build -t quickstart-image .`

To configure docker to use gcloud
`gcloud auth configure-docker`

To tag your image
`docker tag quickstart-image gcr.io/[PROJECT-ID]/quickstart-image:tag1`

To push a docker image into GCR 
`docker push gcr.io/[PROJECT-ID]/quickstart-image:tag1`

To pull an image from GCR (can run on GCE or GKE)
`docker pull gcr.io/[PROJECT-ID]/quickstart-image:tag1`

To clean up
`gcloud container images delete gcr.io/[PROJECT-ID]/quickstart-image:tag1 --force-delete-tags`