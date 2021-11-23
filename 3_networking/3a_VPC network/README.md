# Using VPCs
Pattern: create 'front-end' VPC and one or more 'back-end' VPCs, shown in diagram below.    

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/3_networking/3a_VPC%20network/images/vpc-arch.png" width=600>

## More Detail

- Example GCP architecture and best practices for VPC - [link](https://cloud.google.com/vpc/docs/private-services-access#example) see diagram above
- Best practice article "Mitigating Data Exfiltration Risks in GCP using VPC Service Controls" - [link](https://medium.com/google-cloud/mitigating-data-exfiltration-risks-in-gcp-using-vpc-service-controls-part-1-82e2b440197)

## Other Services

Some services require 'specialty VPCs', which is called **'private services access'**, for example... (links below too)
- Chart comparing types of Private Services Access available - [link](https://cloud.google.com/vpc/docs/private-access-options)
- For CloudRun use 'serverless VPC access'
  - Article: "Using Serverless VPC access" - [link](https://cloud.google.com/vpc/docs/serverless-vpc-access)
- for CloudStorage (GCS) use 'private service access' 
  - Article: "Using Private Service Access to connect to VPCs" - [link](https://cloud.google.com/vpc/docs/private-service-connect#benefits-apis)
- For AppEngine (must check std or flex) use either 'VPC' or 'shared access VPC' 
  - Article: "Connect to VPC" - [link](https://cloud.google.com/appengine/docs/standard/python/connecting-vpc)
  - Article: "Connect to Shared VPC" - [link](https://cloud.google.com/appengine/docs/standard/python/connecting-shared-vpc)
