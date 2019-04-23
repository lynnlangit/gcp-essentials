### Filestore Commands

Use Cloud Filestore to create fully managed NFS file servers on Google Cloud Platform (GCP) for use with applications running on Compute Engine virtual machines (VMs) instances or Google Kubernetes Engine clusters.

To create an instance  
`gcloud filestore instances create nfs-server --project=[PROJECT_ID] --zone=us-central1-c --tier=STANDARD \ `        `     --file-share=name="vol1",capacity=1TB --network=name="default",reserved-ip-range="10.0.0.0/29"`

To get info about your instance  
`gcloud filestore instances describe nfs-server --project=[PROJECT_ID] --zone=us-central1-c`

To mount an instance with a VM, ssh into that GCE VM  
`sudo apt-get -y update`
`sudo apt-get -y install nfs-common`
`sudo mkdir /mnt/test`                -- create mount directory  
`sudo mount 10.0.0.2:/vol1 /mnt/test` -- mount  
`sudo chmod go+rw /mnt/test`          -- change permissions  

To create & verify a file on the mounted volume  
`echo 'This is a test' > /mnt/test/testfile`  
`ls /mnt/test`
