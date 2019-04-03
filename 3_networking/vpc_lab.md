### VPC Commands

To list VPCs  
`gcloud compute networks list`

To create a VPC  
`gcloud compute networks create [network_name] --subnet-mode=auto --bgp-routing-mode=[dynamic_routing_mode]`  
**note**: Example: `gcloud compute networks create my-network --subnet-mode=auto --bgp-routing-mode=regional`  

To list the subnets in a VPC
`gcloud compute networks subnets list`

To list the information about a VPC  
`gcloud compute networks describe [network_name]`  

To add a running GCE instance to a VPC  
Overview:  
    1. stop the original instance  
    `gcloud compute instances stop [instance_name] --zone=[zone]`   
    2. detatch the disk from the stopped instance  
    `gcloud compute instances detach-disk [instance_name] --disk=[disk_name] --zone=[zone]`  
    3. create a new instance  
    `gcloud compute instances create [instance_name] --network=[network_name] --subnet=[subnet_name] --zone=[zone]`

1. Get a list of disks  `gcloud compute disks list`  
2. Stop the VM  
`gcloud compute instances stop [instance_name]`  
3. 
1. Create the GCE instance and add it to an existing VPC

To move a running GCE instance to a differentVPC
1. Alter the GCE instance and move it to a new existing VPC
*not sure if this is possible, think it is

To delete a VPC 
`gcloud compute networks delete [network_name]`



