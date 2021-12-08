# Google Cloud Armor

Google Cloud Armor provides DDoS and application layer defense working in conjunction with external HTTP(S) load balancers. It provides visibility into attacks and allows you to deploy pre-configured and custom rules to mitigate attacks against your web applications and services. Like the external HTTP(S) load balancer, Google Cloud Armor is delivered at the edge of Google's network, helping to defend against infrastructure and application attacks close to their source.
- 📺  More detail in this 15 min talk - [link](https://www.youtube.com/watch?v=oXJ68Sa8jfU)
- 📖  Includes two types of service tiers, 'standard' or 'managed protection plus' - [link](https://cloud.google.com/armor/docs/managed-protection-overview)
- 📖  Pricing by service level - [link](https://cloud.google.com/armor/pricing)

## Cloud Armor includes WAF Rules

- Google Cloud Armor helps you protect your GCP deployments from multiple types of threats, including distributed denial-of-service (DDoS) attacks and application attacks like cross-site scripting (XSS) and SQL injection (SQLi) using security policies which are implemented as WAF (web application firewall) rules
- Google Cloud Armor features some automatic protections and some that you need to configure manually
- The service includes example rules which can act as an WAF layer of protection with your GCP NLB
- 📖 List of preconfigured WAF rules - [link](https://cloud.google.com/armor/docs/rule-tuning)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-WAF.png" width=800>

## Cloud Armor mitigates DDOS Attacks

Using CloudArmor, you can protect against DDOS attacks (see the diagram below).
- 📖  Example of configuring security policies for HTTP(S) Load Balancing using Cloud Armor - [link](https://cloud.google.com/armor/docs/configure-security-policies#create-example-policies)  
- 📖  Features described - [link](https://cloud.google.com/load-balancing/docs/tutorials/faster-performance-improved-protection)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/CloudArmor-DDOS.png" width=800>

## Cloud Armor rules for Rate Limiting

- 📖 Example at this [link](https://cloud.google.com/armor/docs/configure-security-policies#rate-limiting-throttling)
- See files in this folder for example syntax
- Example architecture with policies shown below and at [link](https://cloud.google.com/armor/docs/configure-security-policies)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/armor-policies.png" width=1000>

