# Compute Engine

When working with GCP Compute Engine (or GCE) you have several choices.  These include the following:

1) Create a new VM instance using a default GCP template.    --OR--
2) Create a new VM instance using an image or snapshot file. --OR--
3) Create a new VM instance using a template file from the [GCP Marketplace](https://console.cloud.google.com/marketplace/browse?filter=solution-type:vm&project=lynnlangit). --OR--
4) Migrate a VM from on premise, Azure or AWS using the [Cloud Migration tools](https://cloud.google.com/migrate/compute-engine/docs/4.11/concepts/architecture/gcp-reference-architecture). Example architecture shown below.

![Migrate VM](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/migrate-vms.png)

### Learn More

#### Manage VMs

- Install the Ops Agent (for monitoring) on a single VM - [link](https://cloud.google.com/stackdriver/docs/solutions/agents/ops-agent/installation)
- Uninstall the Ops Agent
```
sudo bash add-google-cloud-ops-agent-repo.sh --uninstall
```

#### Use Images and Disks

- VM Imaging Types - [link](https://cloud.google.com/compute/docs/machine-images) 
- GCE Image Mangement Best Practices - [link](https://cloud.google.com/solutions/image-management-best-practices)
- Create GCE Images - [link](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#creating_a_custom_image)
- GCE Image Management - [link](https://cloud.google.com/compute/docs/images/export-image)
- Optimize Persistent Disks - [link](https://www.youtube.com/watch?v=JrLETgBSoa8)

#### Manage groups of VMs

- Managed instance groups (based on instance templates) - [link](https://cloud.google.com/compute/docs/instance-groups#benefits)
- Setup healthcheck for autohealing with MIG - [link](https://cloud.google.com/compute/docs/instance-groups/autohealing-instances-in-migs)
- Add instance group to a network load balancer - [link](https://cloud.google.com/compute/docs/instance-groups/adding-an-instance-group-to-a-load-balancer)
- Patterns for scalable and resiliant applications running on VMs - [link](https://cloud.google.com/architecture/scalable-and-resilient-apps)

#### Implement Migration Practices

- GCP Lift and Shift - [link](https://cloud.google.com/files/Lift-and-Shift-onto-Google-Cloud.pdf)
- GCP Migration - [link](https://cloud.google.com/solutions/migration-center/)
- GCP VM Migration - [link](https://cloud.google.com/vm-migrate/)
- GCP VM Best Practices for Migrations - [link](https://cloud.google.com/solutions/best-practices-migrating-vm-to-compute-engine)
- How Disruptive is GCE Live Migration? - [link](https://blog.doit-intl.com/how-live-is-google-compute-engine-live-migration-f875e96ba923)

#### Deploy Specialty Workloads on GCE

- Tutorial: "Run TensorFlow ML inference on GCE w/T4 GPU" - [link](https://cloud.google.com/compute/docs/tutorials/ml-inference-t4)


