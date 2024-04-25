# Google Batch API

Google has made several versions of a workload batch API to control the scaling of Google Compute Engine instances (VMs) available over time.  The latest version is listed first in the list below.

- **Google Batch** - GA in 2022 - for more detail about using in bioinformatics, see this [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/6b_Use_Batch_API.md)
   - **Google Life Sciences** - beta, but in broad, general usage
   - **Google Pipelines (v1 and v2)** - replaced by Google Life Sciences API, also called `PAPI`, note that API calls for LS API (above) still sometimes refer to PAPI API
   - **Google Genomics** - replaced by Google Pipelines API

---

## Understanding Google Batch

### Why do this
Scale your analysis using [`Google Cloud Batch API`](https://cloud.google.com/blog/products/compute/new-batch-service-processes-batch-jobs-on-google-cloud) to manage compute resources (Google Cloud Batch API is an alternative to Google Life Sciences API (which was previously named Google Cloud Genomics/Pipelines API))

### What is this
 The Batch service handles several essential batch computing tasks. 
 - It manages the job queue 
 - provisions and autoscales resources
 - runs jobs and executes subtasks
 - automatically handles common errors 
 - access the service through the API, the gcloud command line tool, workflow engines, or via UI in Cloud Console. 

The Google Batch service can...
- Run batch jobs as a service. Batch supports throughput-oriented, HPC, AI/ML, and data processing jobs.
- Provision compute resources. Batch supports all CPU machine families including the newly released T2A Arm instances
- Use accelerator-optimized resources. In collaboration with NVIDIA, Batch supports the use of NVIDIA GPUs when running demanding batch workloads such as ML training, HPC, and graphics simulation.
- Support common job types including arrays of jobs and multi-node MPI jobs utilizing task parallelization. 
- Handle any executable. Bring your scripts or containerized workload.
- Provide flexible provisioning models, including support for **Spot VMs, which offer up to 91% savings** versus regular compute instances, and custom machine types.
- Simplify native integrations with Google Cloud services as well as popular workflow engines and tools such as Nextflow. The dsub command line tool will be supported imminently.


### How to do this

 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-running.png" width=400 align=right>
 
 USE the [Transcoding Tutorial](https://github.com/GoogleCloudPlatform/batch-samples/tree/main/transcoding) to run a pipeline that which leverages Batch to transcode H.264 video files to VP9.  Running batch job example shown to the right.
 
 You can use either a **container image** or a **script** to detail job run steps (or tasks).  This example uses a shell script `transcode.sh` to run a job.    
 
 To configure a job, update the example `job.json` with your demo cloud storage bucket.  Use this file to configure the cores and memory requested for your job run.  In this configuration file, you can also detail the `VM Model` (standard or spot) type, task count and parallelism for your job run.    
 
 If you select spot VM instance type, then the VM types that will be used are Google Compute Engine pre-emptible types and their execution can be interrupted, depending on spot instance availability.
 
 Use Cloud Logging and the Google Batch Web UI to monitor batch job status.  After the batch job completes, verify the output files in the configured cloud storage bucket.  When the job is complete, the web UI will show the status of the job, "succeeded", "failed", etc...  An example is shown below.
 
<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-result.png" width=700>

### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements

 -----


### How to learn more

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-tool-tests.png" width=800>

#### General Google Batch 
- 🛠️ Example (simple event-based workflow) Google Batch pipeline architecture shown above
- :books: GCP Docs and more examples of using Google Batch features - [link](https://cloud.google.com/batch/docs/create-run-job#create-basic-script)
- 📺 10 minute video on Google Batch (includes demo) - [link](https://www.youtube.com/watch?v=RS7UJhD4R48)
- :octocat: Batch Samples - [link](https://github.com/GoogleCloudPlatform/batch-samples)

#### Google Batch and HPC or Nextflow
- :octocat: HPC + Batch Toolkit - [link](https://github.com/GoogleCloudPlatform/hpc-toolkit/blob/develop/docs/cloud-batch.md)
- :book: Nextflow Pipelines using Google Batch - [link](https://www.nextflow.io/blog/2022/deploy-nextflow-pipelines-with-google-cloud-batch.html)
- :books: Nextflow Pipelines and Google Batch configuration documentation - [link](https://www.nextflow.io/docs/edge/google.html#cloud-batch)


