### IoT Core Commands

Main - https://cloud.google.com/iot-core/  

Concepts - https://cloud.google.com/iot/docs/gcloud-examples  
- Device Registry (w/Pub-Sub Topics)  
- Device Manager  - for device config, state (health & activity)  
- Authenticated Device  
- Two Protocol Bridge (for MQTT or HTTP)  

Control Device Security via (https://cloud.google.com/iot/docs/concepts/device-security)
- Keys  
- GCP IAM objects  

End-to-end Example - https://cloud.google.com/iot/docs/samples/end-to-end-sample  

To get the sample code  
`git clone https://github.com/GoogleCloudPlatform/python-docs-samples`
`cd python-docs-samples/iot/api-client/end_to_end_example`  

To create a service account using the console  
 - Click Select, then select a project to use for the service account.
 - Click Create service account.
 - Name the account e2e-example and click Create.
 - Select the role Project > Editor and click Continue.
 - Click Create key.
 - Under Key type, select JSON and click Create.
 - Save this key to the same directory as the example Python files, and rename it service_account.json.
 - Download Google's CA root certificate into the same directory as the example files. You can optionally set the location of the certificate with the --ca_certs flag.

To install dependencies  
`cd iot/api-client/end_to_end_example`
`sudo pip install -r requirements.txt`  

To start the server  
`python cloudiot_pubsub_example_server.py --project_id=PROJECT_ID \`
 `   --pubsub_subscription=PUBSUB_SUBSCRIPTION --service_account_json=service_account.json`  

To create simulated devices (set the --mqtt_bridge_port flag to 443 when you run the device code)  
`python cloudiot_pubsub_example_mqtt_device.py \ `   
   ` --project_id=PROJECT_ID \  `    
   ` --device_id=DEVICE_ID \  `  
    `--private_key_file=rsa_private.pem \ `   
    `--algorithm=RS256`    

