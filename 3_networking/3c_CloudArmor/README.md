# Cloud Armor

GCP includes services such as Network Load Balancing and Cloud Armor to allow you to protect external service application boundaries. 
-  📺  More detail in this 15 min talk - [link](https://www.youtube.com/watch?v=oXJ68Sa8jfU)

## Network Security Architecture 

Shown below is an example using GCP networking services, CloudArmor, NLB, VPC and others.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/Network-Security-Arch.png" width=900>

## Google Cloud Armor

Google Cloud Armor provides DDoS and application layer defense working in conjunction with external HTTP(S) load balancers. It provides visibility into attacks and allows you to deploy pre-configured and custom rules to mitigate attacks against your web applications and services. Like the external HTTP(S) load balancer, Google Cloud Armor is delivered at the edge of Google's network, helping to defend against infrastructure and application attacks close to their source.

- 📖  Includes two types of service tiers, 'standard' or 'managed protection plus' - [link](https://cloud.google.com/armor/docs/managed-protection-overview)
- 📖  Pricing by service level - [link](https://cloud.google.com/armor/pricing)

### Cloud Armor includes WAF Rules

- Google Cloud Armor helps you protect your GCP deployments from multiple types of threats, including distributed denial-of-service (DDoS) attacks and application attacks like cross-site scripting (XSS) and SQL injection (SQLi) using security policies
- Google Cloud Armor features some automatic protections and some that you need to configure manually
- The service includes example rules which can act as an WAF layer of protection with your GCP NLB
- These preconfigured rules can be tuned to disable noisy or otherwise unnecessary signatures, see Tuning Google Cloud Armor WAF rules
- 📖 List of preconfigured WAF rules - [link](https://cloud.google.com/armor/docs/rule-tuning)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-WAF.png" width=800>

### Cloud Armor mitigates DDOS Attacks

Using CloudArmor, you can protect against DDOS attacks (see the diagram below).
- 📖  Example of configuring security policies for HTTP(S) Load Balancing using Cloud Armor - [link](https://cloud.google.com/armor/docs/configure-security-policies#create-example-policies)  and features described - [link[(https://cloud.google.com/load-balancing/docs/tutorials/faster-performance-improved-protection)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-DDOS.png" width=800>

### Cloud Armor rules for Rate Limiting

- 📖 Example at this [link](https://cloud.google.com/armor/docs/configure-security-policies)

