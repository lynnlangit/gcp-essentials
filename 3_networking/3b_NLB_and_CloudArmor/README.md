# NLB & Cloud Armor

GCP includes Network Load Balancing and Cloud Armor to protect external service boundaries. More detail in this 15 min talk - [link](https://www.youtube.com/watch?v=oXJ68Sa8jfU)

## Network Security Architecture 

Shown below is an example using GCP networking services, CloudArmor, NLB, VPC and more.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/Network-Security-Arch.png" width=800>

## CloudArmor includes WAF Rules

Google Cloud Armor helps you protect your GCP deployments from multiple types of threats, including distributed denial-of-service (DDoS) attacks and application attacks like cross-site scripting (XSS) and SQL injection (SQLi). Google Cloud Armor features some automatic protections and some that you need to configure manually.The service includes example rules which can act as an WAF layer of protection with your GCP NLB.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-WAF.png" width=800>

## CloudArmor mitigates DDOS Attacks

Using CloudArmor, you can protect against DDOS attacks

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-DDOS.png" width=800>

