### BigTable Commands

To list BigTable clusters  
`gcloud bigtable clusters list`  

To list BigTable instances  
`gcloud bigtable instances list`  

To create a BigTable cluster  
`gcloud bigtable instances create [instance_id] --cluster=cluster-1 --display-name=[instance_name] --cluster-zone=us-west2-a --instance-type=DEVELOPMENT`  

To get information about your instance  
`gcloud bigtable instances describe [instance_name]`

To configure your instance  
`echo -e "project = [PROJECT_ID]\ninstance = [INSTANCE_ID]" > ~/.cbtrc`

To create a table  
`cbt createtable [table_name]`  

To view a list of tables  
`cbt ls`  

To add a column family  
`cbt createfamily [table_name] [family_name]`  
To view column a list of column families  
`cbt ls [table_name]`  
To delete a column family  
`cbt deletefamily [table_name] [family_name]`

To delete an instance  
`cbt deleteinstance [instance_table]`  

To delete a cluster  
`cbt deletecluster [cluster_name]`  