# Use Google Cloud Shell 

Use Google Cloud Shell (VM) from within Google Cloud to use the set of Google Cloud SDK scripting tools (`gcloud`, `gsutil`, `bq`, others...), 
some customers prefer to install these tools on their local laptops.

Google Cloud Shell has multiple modes of operation.  These include Terminal mode or Editor Mode
- **Terminal mode** - interactive BASH shell, you can open multiple terminal windows using the `+` button in the shell
- **Editor mode** - cloud-based IDE, open from terminal by clicking the `open editor` button. Editor includes...

## Using Terminal Mode

- From the Google Cloud WebUI (or console), click the white terminal buttom on the upper right of the blue bar
- Wait for the Cloud Shell to initialize (first use) and click `authorize` when the dialog box pops us
- Review installed components using `gcloud components list`
- Enable auto-complete using `gcloud beta interactive` (example in terminal mode is shown below)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam/images/cloud-shell-interactive.png" width=600>

## Using Editor Mode

- From the GCP console, open Cloud Shell, then from terminal window, click the `open editor` button. Editor includes...
  - auto-detected language linters, i.e. for Python, etc...
  - integrated debugger
  - integrated links to GCP Cloud API usage (help files)
  - integrated connection to GCP Secrets Manager
  - integrated `Git` tools
  - ingegration with Cloud Run
  - inegrated Kubernetes testing tools using `minikube`, dashboard and `kubectl`
  - mulitple run modes ( default | safe | ephemeral )

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam/images/cloud-shell-editor.png" width=600>
