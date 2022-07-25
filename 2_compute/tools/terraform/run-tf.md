# Deploy a single compute instance 

### Initialize the Terraform state
`terraform init`

### Create the Terraform plan
`terraform plan -out=plan.out`

### Validate the Terraform plan
`terraform validate plan.out`

### Apply the Terraform changes
`terraform apply -auto-approve`

### Output the public IP address of the instance
`terraform output public_ip`

### Output the private IP address of the instance
`terraform output private_ip`

### Show the Terraform state
`terraform show`

### Remove the instance
`terraform destroy`



