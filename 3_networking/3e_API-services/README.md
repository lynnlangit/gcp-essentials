# API Services for GCP 

GCP has a number of API services.  These include the following:
- **API Gateway** - use to server serverless functions as REST APIs, fully-managed
- **Cloud Endpoints** - use for extensible, customer-managed use cases, including hybrid scenarios
- **Apigee** - use to get extensive set of features (montioring, monetization, ....), includes different versions of Apigee (see below)

Select the best fit services for your scenario.  
- Article "Addressing your API use cases: Choosing between Apigee, API Gateway, and Cloud Endpoints" - [link](https://cloud.google.com/blog/products/application-modernization/choosing-between-apigee-api-gateway-and-cloud-endpoints)

## Apigee

From Google documentation "Apigee is a platform for developing and managing APIs. By fronting services with a proxy layer, Apigee provides an abstraction or facade for your backend service APIs and provides security, rate limiting, quotas, analytics, and more." -- [link](https://cloud.google.com/apigee/docs/api-platform/get-started/what-apigee)

<img src="https://cloud.google.com/static/apigee/docs/api-platform/images/ng-saas/ng-saas-arch.png" width=900>

### Compare Apigee Products

Read info to compare `Apigee X` to `Apigee Hybrid` and `Apigee Egde` GCP products - [link](https://cloud.google.com/apigee/docs/api-platform/get-started/compare-apigee-products) 
- additional comparison by behavior for `Apigee X` and `Apigee Edge` at [link](https://cloud.google.com/apigee/docs/api-platform/get-started/compare-apigee-products#api-summary-changes)

### Understand Apigee X Architecture

GCP Architecture guide for `Apigee X`, shows what is provisioned and how to complete the setup process for various scenarios - [link](https://cloud.google.com/apigee/docs/api-platform/architecture/overview). 
- Initial state shown below (from Google's documenation)
- In this state, your VPC and Apigee's VPC cannot communicate with each other without further configuration on your part.

<img src="https://cloud.google.com/static/apigee/docs/api-platform/images/apigee-arch-diagrams/apigee-arch-b.png" width=800>
