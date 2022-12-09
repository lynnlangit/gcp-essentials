# Use Google Cloud Shell 

Use Google Cloud Shell (VM) from within Google Cloud to use the set of Google Cloud SDK scripting tools (`gcloud`, `gsutil`, `bq`, others...), 
some customers prefer to install these tools on their local laptops.

Google Cloud Shell has multiple modes of operation.  These include Terminal mode or Editor Mode
- **Terminal mode** - interactive BASH shell, you can open multiple terminal windows using the `+` button in the shell
- **Editor mode** - cloud-based IDE, open from terminal by clicking the `open editor` button. Editor includes...

## Using Terminal Mode

From the Google Cloud WebUI (or console), click the white terminal buttom on the upper right of the blue bar
- Wait for the Cloud Shell to initialize (first use) and click `authorize` when the dialog box pops us
- Review installed components using `gcloud components list`
- Enable auto-complete using `gcloud beta interactive` (example in terminal mode is shown below)
- Cloud Shell terminal includes a number of tools and libraries --> [link](https://cloud.google.com/shell/docs/how-cloud-shell-works#tools)
  - Tools and Libraries
    - Google Cloud SDK cli tools (`gcloud`, `gsutil`, `bq`....)
    - Terraform tools
    - Docker tools
    - Kubernetes tools - `minikube`, `kubectl`
    - Text editors and source control tools - `git`, `nano` and more 
    - Build and package tools - `pip` , `npm` and more
    - Data science tools - `ipython`, `tensorFlow` and more
  - Modes and Configurations
    - multiple run modes ( default | safe | ephemeral )
    - configuration options --> https://cloud.google.com/shell/docs/configuring-cloud-shell
    - **TIPS:** Google Cloud Shell cheat sheet --> https://cloud.google.com/sdk/docs/cheatsheet

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/images/cloud-shell-interactive.png" width=700>

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

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/0_setup_and_iam_and_costs/images/cloud-shell-editor.png" width=700>

## Limits and Customization

There are a number of default resource limits, see this [link](https://cloud.google.com/shell/docs/quotas-limits) and notable...
- Default storage is 5 GB persistant disk
- Use `tmux` to allows persistence across browser tab sessions. `Ctrl+b` and then `%`, tmux splits the current session window into left and right panes, which can be useful for debugging
- Customize using a startup script - [link](https://cloud.google.com/shell/docs/configuring-cloud-shell#environment_customization_script) - can also use a custom Docker image
- Default inactive timeout is 20 minutes
- Cloud Shell Terminal Ephemeral mode does not store any information on disk, but is fastest to startup and use
- NOTE: The GCP VM must be in the same GCP network as the resource(s) in your project in order to be able to interact/operate with them
