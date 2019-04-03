#!/bin/bash

# ---------------STARTING WITH GOOGLE CLOUD: STEP 0------------
ACCOUNT=<your GCE user email>
gcloud auth login $ACCOUNT --brief              # authenticate to GCP from your working directory via Terminal
                                                # will not launch if $ACCOUNT already has credentials

# ------------------- SETUP: STEPS 1-3 -----------------------
# 1a. SET VARIABLES
ZONE=us-west1-a                         # set your zone, i.e 'us-central1-b', etc....
PROJECT=<your GCE project>              # set your GCP project name
BUCKET_NAME=<your bucket name>          # set your bucket name

GCLOUD_ARGS="--zone $ZONE --project $PROJECT"

# 1. VERIFY BUCKET NAME, CREATE NEW BUCKET
# //TODO - Verify current bucket names (print list), then if not exists -> create new bucket
# gcloud storage list buckets...
# gcloud storage create bucket --name $BUCKET_NAME...

# 2. CREATE BUCKET with storage options, i.e. nearline, coldline, multi-region, etc...
/bin/echo "Creating buckets, please wait..."
gcloud storage create $GCLOUD_ARGS $CLIENT_INSTANCES \
    --machine-type $CLIENT_INSTANCE_TYPE --tags "Galaxy_client" \
    --image $TEAMTERI_IMAGE --image-project $PROJECT \
    --boot-disk-size $BOOT_DISK_SIZE

# 3. Do somethins fancy with storage optional parameters - switch from nearline to coldline?
if [ $USE_PERSISTENT_DISK -eq 1 ]
then
    /bin/echo "Creating something..."
    gcloud compute disks create $GCLOUD_ARGS $CLIENT_DISKS --size "300GB"
    for i in $(seq 1 $NUM_AS_CLIENTS); do
        /bin/echo -n "  attaching galaxy-persistent-disk-$i to galaxy-client-$i:"
        gcloud compute instances $GCLOUD_ARGS attach-disk galaxy-client-$i --disk galaxy-persistent-disk-$i
    done
fi
/bin/echo " new bucket created..."

# ------------------- CLEAN UP  -----------------------

# EMPTY AND DELETE YOUR NEW BUCKET
echo "Deleting bucket name " + $BUCKET_NAME
gcloud storage delete --quiet $GCLOUD_ARGS $BUCKET_NAME

