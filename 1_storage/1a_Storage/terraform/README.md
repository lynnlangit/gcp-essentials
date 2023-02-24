# Terraform Commands

From GCP docs --> https://cloud.google.com/docs/terraform/basic-commands  
Image from Hashicorp (below)

<img src="https://embed-ssl.wistia.com/deliveries/41c56d0e44141eb3654ae77f4ca5fb41.webp?image_crop_resized=960x540">

---

## Basic Flow shown below:  

1. **Initialize** Terraform:

```
terraform init
```

2. **Plan**  
Review the configuration and verify that the resources that Terraform is going to create or update match your expectations:

```
terraform plan
```

Make corrections to the configuration as necessary.


3. **Apply**  
Execute the Terraform configuration by running the following command and entering yes at the prompt:

```
terraform apply
```
Wait until Terraform displays the "Apply complete!" message and then verify the resources were created as expected.  

4. **Reformat** (optional)    
To reformat your Terraform configuration in the standard style, enter the following command:

```
terraform fmt
```
5. **Validate** (optional)  
To check whether your configuration is valid, enter the following command:

```
terraform validate
```

6. **Delete** changes  
Remove resources previously applied with your Terraform configuration by running the following command and entering yes at the prompt:

```
terraform destroy
```
