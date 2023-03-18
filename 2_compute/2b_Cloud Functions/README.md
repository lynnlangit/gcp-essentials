# GCP Functions

## Dev Tools
- Code/test HTTP Cloud Functions locally using the CloudCode add-in for VSCode --> [link](https://atamel.dev/posts/2022/12-12_introduce_functions_in_cloud_code/)
- include best practices --> [link](https://cloud.google.com/functions/docs/bestpractices/tips)

## Cloud Functions V2

Additional functionality for V2 Cloud Functions...   
- compared functionality v2 vs v1 --> [link](https://cloud.google.com/functions/docs/concepts/version-comparison)
- offer triggers to other GCP services via the Eventarc service --> [link](https://cloud.google.com/functions/docs/calling/eventarc)
- are integrated with CloudRun 
- use GCP buildpacks are used to create containers --> [link](https://cloud.google.com/docs/buildpacks/overview)


## GCF w/API Gateway
- GCP now includes an API Gateway service.  
    - API Gateways can be used with a number of GCP compute services 
    - including GCP Functions, GCP Cloud Run and GAE
- Article "GCP API Gateway" - [link](https://cloud.google.com/api-gateway/docs/about-api-gateway) - pattern shown below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-api-gateway.png" width=600>
