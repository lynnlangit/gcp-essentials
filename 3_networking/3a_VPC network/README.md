# Using VPCs
Pattern: create 'front-end' VPC and one or more 'back-end' VPCs, shown in diagram below.    

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/3_networking/3a_VPC%20network/images/vpc-arch.png" width=600>

## More Detail

- Example GCP architecture and best practices for VPC - [link](https://cloud.google.com/vpc/docs/private-services-access#example) see diagram above
- Best practice article "Mitigating Data Exfiltration Risks in GCP using VPC Service Controls" - [link](https://medium.com/google-cloud/mitigating-data-exfiltration-risks-in-gcp-using-vpc-service-controls-part-1-82e2b440197)

## Other Services

Some services require 'specialty VPCs', which is called **'private services access'**, for example... (links below too)
- See this table comparing types of Private Services Access available - [link](https://cloud.google.com/vpc/docs/private-access-options)
- For **CloudRun** use 'serverless VPC access'
  - Article: "Using Serverless VPC access" - [link](https://cloud.google.com/vpc/docs/serverless-vpc-access)
    - Important Limitations include the following: 
      - For Artifact & Container Registry: - the container registry must be in the **same VPC Service Controls perimeter** as the project deploying location.
      - The code being built must be in the **same VPC Service Controls perimeter** as the registry that the container is being pushed to.
      - The Cloud Run continuous deployment feature is **not available** for projects inside a VPC Service Controls perimeter.
- For **CloudStorage (GCS)** use 'private service access' 
  - Article: "Using Private Service Access to connect to VPCs" - [link](https://cloud.google.com/vpc/docs/private-service-connect#benefits-apis)
    - By default, if you have an application that uses a Google service, such as Cloud Storage, your application connects to the default DNS name for that service, such as storage.googleapis.com. Even though the IP addresses for the default DNS names are publicly routable, **traffic sent from Google Cloud resources remains within Google's network**.
    - With Private Service Connect, you can create private endpoints using global internal IP addresses within your VPC network. You can assign DNS names to these internal IP addresses with meaningful names like storage-vialink1.p.googleapis.com and bigtable-adsteam.p.googleapis.com. These names and IP addresses are internal to your VPC network and any on-premises networks that are connected to it using Cloud VPN tunnels or Cloud Interconnect attachments (VLANs). You can control which traffic goes to which endpoint, and can **demonstrate that traffic stays within Google Cloud**.
- For **AppEngine** (must check std or flex) use either 'VPC' or 'shared access VPC' 
  - Article: "Connect to VPC" - [link](https://cloud.google.com/appengine/docs/standard/python/connecting-vpc)
  - Article: "Connect to Shared VPC" - [link](https://cloud.google.com/appengine/docs/standard/python/connecting-shared-vpc)
