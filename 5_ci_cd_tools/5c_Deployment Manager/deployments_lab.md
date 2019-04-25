### Deployment Manager

see this -- https://cloud.google.com/deployment-manager/docs/quickstart  
see the `README.md` for info about the associated `vm.yaml` file

To create the deployment  
`gcloud deployment-manager deployments create quickstart-deployment --config vm.yaml`

To verify the deployment  
`gcloud deployment-manager deployments describe quickstart-deployment`

To delete the deployment  
`gcloud deployment-manager deployments delete quickstart-deployment`  

see also..
To store config data 
https://cloud.google.com/deployment-manager/runtime-configurator/create-and-delete-runtimeconfig-resources



