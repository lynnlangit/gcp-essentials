### GCE Commands

To list instances  
`gcloud compute instances list`

To create an instance  
`gcloud compute instances create [instance_name] --zone=[zone]`  

To desribe your instance  
`gcloud compute instances describe [instance_name] --zone=[zone]`

To SSH to an instance  
`gcloud compute ssh [instance_name] --zone=[zone]`

To upload files into an instance (local)  
`gcloud compute scp .helloworld.txt [instance_name]:/home/[name] --zone=[zone]`  

To view file  
`cd /home/[name] && cat helloworld.txt`  

To exit
`exit`  

To delete an instance  
`gcloud compute instances delete [instance_name] --zone=[zone]`