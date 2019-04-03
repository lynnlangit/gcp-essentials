# create IAM service account credential, used when calling GCP vision api
# export credential to `key.json` file
gcloud iam service-accounts create vision-quickstart; \
  gcloud iam service-accounts keys create key.json --iam-account \
     vision-quickstart@cobalt-nomad-214321.iam.gserviceaccount.com \
  && export GOOGLE_APPLICATION_CREDENTIALS=key.json