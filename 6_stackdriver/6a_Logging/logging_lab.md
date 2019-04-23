### Stackdriver Commands

To work with Stackdriver logs
 

To write a log entry  
`gcloud logging write my-test-log "A simple entry."`

To write JSON to a log  
`gcloud logging write --payload-type=json my-test-log '{ "message": "My second entry", "weather": "partly cloudy"}'`

To read logs  
`gcloud logging read "resource.type=global"`

To delete a log file  
`gcloud logging logs delete my-test-log`

To create log sinks  (for log exports)  
`gcloud logging sinks create  NEW_SINK_NAME  DESTINATION  --log-filter="..." ...`  

`gcloud logging sinks create  syslog-errors storage.googleapis.com/my-third-gcs-bucket \`
`   --log-filter "resource.type=gce_instance AND logName=projects/[PROJECT_ID]/logs/compute.googleapis.com%2Fsyslog AND severity=ERROR"`

To create log metrics  
`gcloud logging metrics create error_count --description="Syslog error counts." \`
`    --log-filter="resource.type=gce_instance AND severity>=ERROR"`

To list logs in the current project  
`gcloud logging logs list`