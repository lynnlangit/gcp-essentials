# Artifact Registry Commands

You'll use a combination of `gcloud` and `docker` (for containers).  For more see this link --> https://cloud.google.com/artifact-registry/docs/docker/store-docker-container-images

## Prereqs: 
- enable the Artifact Registry API 
- install Docker and verify  
`sudo usermod -a -G docker ${USER}`  
`docker run busybox date (should return time/date)`

## To create repo
`gcloud artifacts repositories create quickstart-docker-repo --repository-format=docker \
--location=us-central1 --description="Docker repository"`

## To verify create
`gcloud artifacts repositories list`

## To configure auth
`gcloud auth configure-docker us-central1-docker.pkg.dev`

## To get an image to push
`docker pull us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0`

## To prepare to add image to Artifact Registry by tagging it
`docker tag us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0 \
us-central1-docker.pkg.dev/PROJECT/quickstart-docker-repo/quickstart-image:tag1`

## To push image to AR
`docker push us-central1-docker.pkg.dev/PROJECT/quickstart-docker-repo/quickstart-image:tag1`

## To pull image from AR
`docker pull us-central1-docker.pkg.dev/PROJECT/quickstart-docker-repo/quickstart-image:tag1`

## To remove / clean up AR
`gcloud artifacts repositories delete quickstart-docker-repo --location=us-central1`
