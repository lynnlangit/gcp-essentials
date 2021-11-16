# Storage Tools

## DLP Scanning (Data Loss Prevention)
Fully managed service designed to help you discover, classify, and protect your most sensitive data.
- list of types of PII identified - [link](https://cloud.google.com/dlp/docs/infotypes-reference?hl=en_US)
- de-identify PII data with DLP - [link](https://cloud.google.com/architecture/de-identification-re-identification-pii-using-cloud-dlp)

## ClamVar Virus Scanning
Automating malware scanning for documents uploaded to Cloud Storage - [link](https://cloud.google.com/architecture/automating-malware-scanning-for-documents-uploaded-to-cloud-storage)
  - Build using GCP with an open source antivirus engine called ClamAV
  - Run ClamAV in a Docker container hosted in Cloud Run (architecture shown below)
  - Write log entries to Cloud Logging and records metrics to Cloud Monitoring
  - Builds an event-driven pipeline that can help you automate the evaluation of documents for malicious code

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/1_storage/1a_Storage/images/clamvar-cloudrun.png" width=800>
  
   
