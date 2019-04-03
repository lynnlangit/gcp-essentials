#!/bin/bash

# ---------------0. Get list of images--------------------------------------
gcloud compute images list --project windows-sql-cloud --no-standard-images

# ---------------1. Launch your SQL Server instance on GCE------------------
gcloud compute instances create [INSTANCE_NAME] \
    --image-project windows-sql-cloud \
    --image-family [IMAGE_FAMILY] \
    --machine-type [MACHINE_TYPE] \
    --boot-disk-size [BOOT_DISK_SIZE] \
    --boot-disk-type [BOOT_DISK_TYPE]

# ---------------2. Set the firewall rule------------------------------------
gcloud compute firewall-rules create sql-server-1433 \
--description "Allow SQL Server access from all sources on port 1433." \
--allow tcp:1433 --network [NETWORK]

# ---------------3. Other Info-------------------------------------------------
## Set the intial password for your SQL Server instance
##      -- Connect via RDP, if using Chrome, there's a RDP plug-in you can download
##      -- Add firewall rule for RDP port (3398)

## Connect via RDP to your instances
## (Optional) Install additional SQL Server components
##      -- Setup exe at c:\setup.exe
##  (Optional) Add a second persistent disk
##      -- Re-run setup and add installation path
## NOTE: You can re-size your disks if needed, even when instance is running

## Add R Language (in-database) service
##      -- Connect to your instance using RDP
##      -- Click on c:\setup.exe --> add R
