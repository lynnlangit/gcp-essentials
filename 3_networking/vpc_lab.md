### VPC Commands

To list VPCs  
`gcloud compute networks list`

To create a VPC  
`gcloud compute networks create [network_name] --subnet-mode=custom`  
**note**: Example: `gcloud compute networks create my-network --subnet-mode=auto --bgp-routing-mode=regional`  

To list the subnets in a VPC
`gcloud compute networks subnets list`

To list the information about a VPC  
`gcloud compute networks describe [network_name]`  

To create a subnet of a network  
`gcloud compute networks subnets create [subnet_name] --network=[network_name] --range=[ip-addr/port] --zone=[zone]`  

To add a running GCE instance to a VPC  
Overview:  
    1. stop the original instance  
    `gcloud compute instances stop [instance_name] --zone=[zone]`
    2. get a list of disks  
    `gcloud compute disks list`     
    3. detatch the disk from the stopped instance  
    `gcloud compute instances detach-disk [instance_name] --disk=[disk_name] --zone=[zone]`  
    4. create a new instance  
    `gcloud compute instances create [instance_name] --network=[network_name] --subnet=[subnet_name] --disk="boot=yes,name=[disk_name] --zone=[zone]`  
    5. delete the old instance  
    `gcloud compute instances delete [old_instance_name] --zone=[zone]`

To delete a VPC  
  1. delete any subnets that uses the network  
  `gcloud compute networks subnets delete [subnet_name] --region=[region_name]`
  2. delete the network  
  `gcloud compute networks delete [network_name]`  



