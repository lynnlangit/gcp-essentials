### VPC Commands

To list VPCs  
`gsutil ls`

To create a VPC  
`gsutil mb gs://[bucket_name]`  
`gsutil mkdir gs://[bucket_name]`

To list the subnets in a VPC
`gsutil cp test.txt gs://[bucket_name]`

To add a running GCE instance to a VPC
1. Create the GCE instance and add it to an existing VPC

To move a running GCE instance to a differentVPC
1. Alter the GCE instance and move it to a new existing VPC
*not sure if this is possible, think it is

To delete a VPC 
`gsutil ls gs://[bucket_name]`



