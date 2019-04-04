### GKE Commands

To create a cluster  
`gcloud container clusters create [cluster_name] --machine-type= g1-small --num-nodes=1 --zone us-west2-a`  

To list clusters  
`gcloud container clusters list`  

To configure the cluster  
`gcloud container clusters get-credentials`  

To create a deployment  
`kubectl run hello-server --image gcr.io/google-samples/hello-app:2.0 --port 8080`  

To expose the deployment  
`kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080`  

To connect to the deployment (copy the ip from the EXTERNAL-IP column)
`kubectl get service hello-server`

To show the deployment  
`http://[EXTERNAL_IP]/`  

To delete a service  
`kubectl delete service hello-server`  

To delete a cluster  
`gcloud container clusters delete [cluster_name]`  
