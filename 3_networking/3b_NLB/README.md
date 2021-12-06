# Network Load Balancers 
GCP includes services such as Network Load Balancing and Cloud Armor to allow you to protect external service application boundaries. 

-  📺 - 5 minute overview of GCP load balancing options - [link](https://www.youtube.com/watch?v=h8EqM6Xt3MA)
-  📺 -  More detail in this 15 min talk - [link](https://www.youtube.com/watch?v=oXJ68Sa8jfU)

## Network Security Architecture 

Shown below is an example using GCP networking services, CloudArmor, NLB, VPC and others.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/Network-Security-Arch.png" width=900>

## Network Load Balancers

Network load balancers allow you to manage and control compute service instances (GCE, CloudRun and others).  
- Create external (HTTP), internal (TCP) or other types of NLBs depending on your needs
-  📺 - 20 min deep dive on GCP NLB options - [link](https://www.youtube.com/watch?v=HUHBq_VGgFg)
-  📖 - GCP includes many options to implement NLB services - see this feature comparison list - [link](https://cloud.google.com/load-balancing/docs/features)
- Load balancers can be regional or global, see data model for global LB below

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/global-lb.png" width=900>

### Instance Groups

- An instance group is a collection of virtual machine (VM) instances that you can manage as a single entity.
- Compute Engine offers two kinds of VM instance groups, managed and unmanaged:
  - **Managed instance groups (MIGs)** let you operate apps on multiple identical VMs. You can make your workloads scalable and highly available by taking advantage of automated MIG services, including: autoscaling, autohealing, regional (multiple zone) deployment, and automatic updating.
  - **Unmanaged instance groups** let you load balance across a fleet of VMs that you manage yourself.

#### Managed Instance Groups

- **High Availability**
  - Keeping VM instances running. If a VM in the group stops, crashes, or is deleted by an action other than an instance group management command (for example, an intentional scale in), the MIG automatically recreates that VM in accordance with the original instance's specification (same VM name, same template) so that the VM can resume its work.
  - Application-based autohealing. You can also set up an application-based health check, which periodically verifies that your application responds as expected on each of the MIG's instances. If an application is not responding on a VM, the autohealer automatically recreates that VM for you. Checking that an application responds is more precise than simply verifying that a VM is up and running.
  - Regional (multiple zone) coverage. Regional MIGs let you spread app load across multiple zones. This replication protects against zonal failures. If that happens, your app can continue serving traffic from instances running in the remaining available zones in the same region.
  - Load balancing. MIGs work with load balancing services to distribute traffic across all of the instances in the group.
- **Scalability** 
  - When your apps require additional compute resources, autoscaled MIGs can automatically grow the number of instances in the group to meet demand. If demand drops, autoscaled MIGs can automatically shrink to reduce your costs.
- **Automated updates** 
  - The MIG automatic updater lets you safely deploy new versions of software to instances in your MIG and supports a flexible range of rollout scenarios, such as rolling updates and canary updates. You can control the speed and scope of deployment as well as the level of disruption to your service.
- **Support for stateful workloads**
  - You can use MIGs for building highly available deployments and automating operation of applications with stateful data or configuration, such as databases, DNS servers, legacy monolith applications, or long-running batch computations with checkpointing. Stateful MIGs preserve each instance's unique state (instance name, attached persistent disks, and metadata) on machine restart, recreation, auto-healing, and update events.

- 📖 - For more see [link](https://cloud.google.com/compute/docs/instance-groups/)

### Backend Services

A backend service defines how Cloud Load Balancing distributes traffic.  Add managed instance groups to backend services.
- The backend service configuration contains a set of values, such as the protocol used to connect to backends, various distribution and session settings, health checks, and timeouts
- These settings provide fine-grained control over how your load balancer behaves
- NOTE: you can serve up 'backend buckets' if serving static content
-  📖 - For more see [link](https://cloud.google.com/load-balancing/docs/backend-service)

### Target Pools for GCE

- External TCP/UDP Network Load Balancing can use either a backend service or a target pool to define the group of backend instances that receive incoming traffic.
-  📖 - For more see [link](https://cloud.google.com/load-balancing/docs/target-pools)

---

## Serverless Network Endpoint Groups (NEG)

A network endpoint group (NEG) specifies a group of backend endpoints for a load balancer. A **serverless NEG** is a backend that points to a Cloud Run, App Engine, or Cloud Functions service.

-  📖 - About serverless network endpoint groups - [link](https://cloud.google.com/load-balancing/docs/negs/serverless-neg-concepts)
-  📖 - Overview of Serverless network endpoint groups - [link](https://cloud.google.com/load-balancing/docs/negs/serverless-neg-concepts)
-  📖 - For an example, see this [link](https://cloud.google.com/load-balancing/docs/https/setting-up-https-serverless)
-  📖 - Limitations of serverless NEGs - [link](https://cloud.google.com/load-balancing/docs/negs/serverless-neg-concepts#limitations)
-  📖 - Securing ClourRun access with NLBs - [link](https://cloud.google.com/run/docs/securing/ingress)

### Example

Shown below is a customer example 

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-nlb-example.png" width=800>



