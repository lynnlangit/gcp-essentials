### Cloud Tasks Commands

#### What is this

Cloud Tasks is a fully managed service that allows you to manage the execution, dispatch, and delivery of a large number of distributed tasks. Using Cloud Tasks, you can perform work asynchronously outside of a user or service-to-service request.  

Cloud Tasks guarantees at-least-once delivery and most tasks are delivered exactly once.  You can schedule tasks executions and also control retries.  Tasks are automatically de-duplicated.  Add tasks targeting any HTTP service running on Compute Engine, Google Kubernetes Engine, Cloud Run, Cloud Functions or on-premises systems in a secure fashion using industry standard OAuth/OIDC authentication.

---

see this -- https://cloud.google.com/tasks/docs/quickstart-appengine

Prereqs:
--enable the Cloud Tasks API
--create test GAE project
--set up auth (service account) for Cloud Tasks (see quickstart)

To create a task queue   
`gcloud tasks queues create my-queue`

To verify a task queue  
`gcloud tasks queues describe my-queue`

View task queue output
`name: projects/[PROJECT_ID]/locations/[LOCATION_ID]/queues/my-appengine-queue // Note these ids`  
`rateLimits:`  
  `maxBurstSize: 100`  
  `maxConcurrentDispatches: 1000`  
  `maxDispatchesPerSecond: 500.0`  
`retryConfig:`  
  `maxAttempts: 100`  
  `maxBackoff: 3600s`  
  `maxDoublings: 16`  
  `minBackoff: 0.100s`  
`state: RUNNING`    

...

To clean up  
--delete the Task queue
--delete the GAE test project