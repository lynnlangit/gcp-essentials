# Storage Tools

## DLP Scanning

## ClamVar Virus Scanning
- Tutorial for Automating malware scanning for documents uploaded to Cloud Storage - [link](https://cloud.google.com/architecture/automating-malware-scanning-for-documents-uploaded-to-cloud-storage)
  - Built by using GCP with an open source antivirus engine called ClamAV
    - ClamAV runs in a Docker container hosted in Cloud Run 
    - Also writes log entries to Cloud Logging and records metrics to Cloud Monitoring
    - Build an event-driven pipeline that can help you automate the evaluation of documents for malicious code
  
   
