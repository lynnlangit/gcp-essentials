# - from https://cloud.google.com/datalab/docs/quickstart

# VERIFY prereqs, If using gcloud shell not needed
gcloud components update
gcloud components install datalab

# CREATE Instance, If first gce instance api must be enabled
# You will be prompted to select a region
# Cloud Source Repository must be enabled
# You will be prompted for a password, you can leave it blank or put in a password of your own
datalab create datalab-lynntest

# CONNECT to Instance
http://localhost:8081
# Wait for ssh key to propogate
# Navigate to `datalab/docs/samples/Anomaly_Detection_in_HTTP_Logs.ipynb`

# ---------------REMOVE ALL---------------
datalab delete datalab-lynntest
datalab delete --delete-disk datalab-lynntest
gcloud compute firewall-rules delete datalab-network-allow-ssh
gcloud compute networks delete datalab-network
gcloud source repos delete datalab-notebooks

# ------------------TIPS:---------------------
# CREATE Instance with GPU -- fails (wrong region?)
datalab beta create-gpu datalab-lynntest-gpu

# CONNECTION (if terminal window is closed)
 datalab connect datalab-lynntest
 datalab connect --zone us-east1-b --port 8081 datalab-lynntest