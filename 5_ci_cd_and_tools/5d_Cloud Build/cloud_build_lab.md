### Cloud Build Commands

see this -- https://cloud.google.com/cloud-build/docs/quickstart

Prereqs:  
--enable the Cloud Build API  
--install Docker and verify  
`docker run busybox date` (should return time/date)  
--uses `Dockerfile` and `quickstart.sh`  
(set executable via `chmod +x quickstart.sh`)  

To build the example docker image  
`gcloud builds submit --tag gcr.io/[PROJECT_ID]/quickstart-image .`

--OR--  

To build the example docker image with a config file  
`gcloud builds submit --config cloudbuild.yaml .`  
To verify image - use the console  

To run the image  
`gcloud auth configure-docker`  
`docker run gcr.io/[PROJECT_ID]/quickstart-image`  

To practice an end-to-end walkthrough  (takes ~ 1 hour)  
https://codelabs.developers.google.com/codelabs/cloud-builder-gke-continuous-deploy/index.html#0

