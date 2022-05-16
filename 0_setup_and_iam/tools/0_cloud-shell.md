# Use Google Cloud Shell 

Use Google Cloud Shell (VM) from within Google Cloud to use the set of Google Cloud SDK scripting tools (`gcloud`, `gsutil`, `bq`, others...), 
some customers prefer to install these tools on their local laptops.

## Process

- From the Google Cloud WebUI (or console), click the white terminal buttom on the upper right of the blue bar
- Wait for the Cloud Shell to initialize (first use) and click `authorize` when the dialog box pops us
- Review installed components using `gcloud components list`
- Enable auto-complete using `gcloud beta interactive` (example shown below)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam/images/cloud-shell-interactive.png" width=800>

