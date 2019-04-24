### Pub Sub Commands

NOTE: There is a walkthrough on GCP console  

To create a topic  
`gcloud pubsub topics create my-topic`

To list a pubsub topics  
`gcloud pubsub topics list`

To create a subscription  
`gcloud pubsub subscriptions create --topic my-topic my-sub`

To publish 3 messages into the topic queue
`gcloud pubsub topics publish my-topic --message "hello"`
`gcloud pubsub topics publish my-topic --message "hello world"`
`gcloud pubsub topics publish my-topic --message "hello world again"`

To print message value from the pubsub queue
`gcloud pubsub subscriptions pull --auto-ack my-sub`

To clean up
`gcloud pubsub subscriptions delete my-sub`
`gcloud pubsub topics delete my-topic`





