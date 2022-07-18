# Commands for VertexAI DLVM

For a VertexAI Deep Learning Virtual Machine....

### Create a DLVM instance
`gcloud beta dlvm instances create <instance-name> /`  
   ` --zone <zone> --machine-type <machine-type> /`   
    `--disk-size <disk-size> --disk-type <disk-type> --disk-auto-delete /`   
    `--network <network> --subnet <subnet> --tags <tags>`  

### Start a DLVM instance
`gcloud beta dlvm instances start <instance-name>`

### Pause a DLVM instance
`gcloud beta dlvm instances pause <instance-name>`

### Stop a DLVM instance
`gcloud beta dlvm instances stop <instance-name>`

### Resize a DLVM instance
`gcloud beta dlvm instances resize <instance-name> --machine-type <machine-type>`

### Delete a DLVM instance
`gcloud compute instances stop $INSTANCE_NAME --zone $ZONE`
