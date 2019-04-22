### BigTable Commands

https://cloud.google.com/bigtable/docs/quickstart-cbt

To install CBT tool
`gcloud components update`
`gcloud components install cbt`

To config .cbtrc file
`echo project = [PROJECT_ID] > ~/.cbtrc`
`echo instance = quickstart-instance >> ~/.cbtrc`

To list BigTable clusters  
`gcloud bigtable clusters list`  

To list BigTable instances  
`gcloud bigtable instances list`  

To create a BigTable cluster  
`gcloud bigtable instances create [instance_id] --cluster=cluster-1 --display-name=[instance_name] --cluster-zone=us-west2-a --instance-type=DEVELOPMENT`  

To get information about your instance  
`gcloud bigtable instances describe [instance_name]`

To create a table  
`cbt createtable [table_name]`  
`cbt createtable my-table`

To view a list of tables  
`cbt ls`  

To add a column family  
`cbt createfamily [table_name] [family_name]`  
`cbt createfamily my-table cf1`

To view column a list of column families  
`cbt ls [table_name]`  

To put a test value
`cbt set my-table r1 cf1:c1=test-value`

To read a test value
`cbt read my-table`

To delete a column family  
`cbt deletefamily [table_name] [family_name]`

To delete an instance  
`cbt deleteinstance [instance_table]`  

To delete a cluster  
`cbt deletecluster [cluster_name]`  