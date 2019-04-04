### BQ Commands

To list a public dataset structure (1000 genomes)  
`bq ls genomics-public-data:1000_genomes`  

To create a dataset from a .csv or .txt file (please use a file from the (y_sample_data folder)
1. Create a new dataset  
`bq mk [dataset_name]`  
2. Upload data to the dataset (cd into the sample data folder [local]) 
`bq load --source_format=CSV transactions.SalesJan2009 ./0_SalesJan2009.csv ./0_SalesJan2009.json`  

To create a query cost estimate (plan - number of bytes output)  
`bq query --use_legacy_sql=false --dry_run 'SELECT * FROM `[project_name].[dataset_name].[table_name]` LIMIT 10'`  

To execute a query  
`bq query --use_legacy_sql=false 'SELECT * FROM `[project_name].[dataset_name].[table_name]` LIMIT 10'`  

To view a query cost  
1. Get the total amount of bytes of data will be used through the use of --dry_run  
2. Input the total number of bytes into `cloud.google.com/products/calculator`  

To delete a table  
`bq rm -f -t [project_id]:[dataset].[table]`  
To delete a dataset  
`bq rm -r -f -d [project_id]:[dataset]`  

