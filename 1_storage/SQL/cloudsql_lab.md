### Cloud SQL commands

To create an instance  
`gcloud sql instances create [instance_name] --tier=db-f1-micro --region=us-west2`    

To create a database  
`gcloud sql database create [db_name] --instance=[instance_name]` 

To list the databases  
`gcloud sql databases list [db_name]`  

To create a database table  
1. Connect to instance  
`gcloud sql connect [instance_name]`
2. Use the database created  
`use [db_name]` 
3. Create the table  
`CREATE TABLE CONTACTS(name varchar(20), lastname varchar(20), phone varchar(20));`  

To list database tables (in mysql console)  
`SHOW TABLES;`  

To rename a table
`RENAME TABLE [db_name] TO [new_db_name];`  

list table properties  
`DESCRIBE [db_name];`

To add a value to a table row  
`INSERT INTO [table_name] VALUES('John', 'Doe', '555');`

To list value in a table row  
`SELECT * FROM contacts WHERE name='John';` 

To delete a database  
`gcloud sql databases delete test-db --instance=[instance_name]`

To delete an instance  
`gcloud sql instances delete [instance_name]`
