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

About Images - https://cloud.google.com/solutions/image-management-best-practices

To create an image from a persistent disk  
`gcloud compute images create [IMAGE_NAME] --source-disk [SOURCE_DISK] \`
` --source-disk-zone [ZONE] --family [IMAGE_FAMILY] [--force]`

To create an image from a snapshot  
`gcloud compute images create [IMAGE_NAME] --source-image [SOURCE_IMAGE] \
` --source-image-project [IMAGE_PROJECT] --family [IMAGE_FAMILY]`

