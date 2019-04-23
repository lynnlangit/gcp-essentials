#!/bin/bash

# ---------------STARTING WITH GOOGLE CLOUD: STEP 0------------
ACCOUNT=<your GCE user email>
gcloud auth login $ACCOUNT --brief              # authenticate to GCP from your working directory via Terminal
                                                # will not launch if $ACCOUNT already has credentials

# ------------------- SETUP: STEPS 1-3 -----------------------
# 1a. SET VARIABLES
NUM_AS_CLIENTS=1                        # set the number of GCE VM instances of Galaxy
ZONE=us-west1-a                         # set your zone, i.e 'us-central1-b', etc....
PROJECT=<your GCE project>              # set your GCP project name
CLIENT_INSTANCE_TYPE=n1-standard-1      # set your VM instance type / size
USE_PERSISTENT_DISK=0                   # set to 0 for no extra disk, 1 for extra persistent disk
TEAMTERI_IMAGE=galaxy-image-1           # the Galaxy image you create & store in GCE Images
BOOT_DISK_SIZE=30GB                     # set to 30 GB or greater for ability to 'dockerize'

CLIENT_DISKS=`for i in $(seq 1 $NUM_AS_CLIENTS); do echo galaxy-persistent-disk-$i; done`
CLIENT_INSTANCES=`for i in $(seq 1 $NUM_AS_CLIENTS); do echo galaxy-client-$i; done`

GCLOUD_ARGS="--zone $ZONE --project $PROJECT"

# 1a. CREATE NETWORK / FIREWALL RULES
# //TODO - Create non-default network, add firewall rules to allow http/https traffic (to reach Galaxy)
# gcloud compute networks create...
# gcloud compute firewall-rules create...

# 1b. CREATE IMAGE to be used as a basis for your GCE instance (includes Galaxy install)
/bin/echo "Creating client image, please wait..."
gcloud compute images create $GCLOUD_ARGS  \
     --tags "Galaxy_client" --image $TEAMTERI_IMAGE \
     --source-uri "galaxyproject_images/planemo_machine_smc.06.image.tar.gz"
/bin/echo " galaxy GCE / VM image created..."

# 2a. CREATE CLIENT VMS & DISKS
/bin/echo "Creating client instances, please wait..."
gcloud compute instances create $GCLOUD_ARGS $CLIENT_INSTANCES \
    --machine-type $CLIENT_INSTANCE_TYPE --tags "Galaxy_client" \
    --image $TEAMTERI_IMAGE --image-project $PROJECT \
    --boot-disk-size $BOOT_DISK_SIZE

# 2b. SETUP PERSISTENT DISKS (optional)
if [ $USE_PERSISTENT_DISK -eq 1 ]
then
    /bin/echo "Creating persistent disks..."
    gcloud compute disks create $GCLOUD_ARGS $CLIENT_DISKS --size "300GB"
    for i in $(seq 1 $NUM_AS_CLIENTS); do
        /bin/echo -n "  attaching galaxy-persistent-disk-$i to galaxy-client-$i:"
        gcloud compute instances $GCLOUD_ARGS attach-disk galaxy-client-$i --disk galaxy-persistent-disk-$i
    done
fi
/bin/echo " persistent disks created..."

# 3. CONNECT TO GALAXY on your GCE VM ('hello-gene')
# - Edit your VM to allow http/https traffic on the network for that VM (click in the GCP console)
# - Find the public IP of 'hello-gene', open http://<public ip of 'hello-gene'>, you should see Galaxy in your browser
# - Galaxy login is Username: planemo and Password: planemo

# ------------------- CLEAN UP  -----------------------

# DELETE ALL INSTANCES
echo "Deleting VM instances..."
gcloud compute instances delete --quiet $GCLOUD_ARGS $CLIENT_INSTANCES

# DELETE DISKS (Optional - you may wish to save these disks for reuse with new VM instances)
if [ $USE_PERSISTENT_DISK -eq 1 ]
then
    /bin/echo "Detaching persistent disks..."
    for i in $(seq 1 $NUM_AS_CLIENTS); do
      /bin/echo -n "  galaxy-persistent-disk-$i"
      gcloud compute instances detach-disk $GCLOUD_ARGS galaxy-client-$i --disk galaxy-persistent-disk-$i
    done
    /bin/echo "  deleting disks..."
    gcloud compute disks delete $GCLOUD_ARGS $CLIENT_DISKS -q
fi
