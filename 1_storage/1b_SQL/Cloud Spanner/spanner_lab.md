# Spanner Commands

https://cloud.google.com/spanner/docs/samples/spanner-quickstart

### Setup Spanner

To create an intance configuration, run the following command:  
`gcloud spanner instance-configs create my-config --instance=my-instance --config=regional-us-central1`   

To setup a new Spanner instance, run the following command:  
`gcloud spanner instances create my-instance --instance-config=my-config --display-name="My Instance" --num-nodes=1` 

To create a new database and table, run the following command:  
`gcloud spanner databases create my-database --instance=my-instance --ddl="CREATE TABLE Singers (SingerId INT64 NOT NULL, FirstName STRING(1024), LastName STRING(1024), SingerInfo STRING(1024) ) PRIMARY KEY (SingerId)"`  

To update a table, run the following command:  
`gcloud spanner databases ddl update my-database --instance=my-instance --ddl="UPDATE TABLE Singers (SingerId INT64 NOT NULL, FirstName STRING(1024), LastName STRING(1024), SingerInfo STRING(1024), Birthplace STRING(1024) ) PRIMARY KEY (SingerId)"`

To create another table with a timestamp column, run the following command:
`gcloud spanner tables create Albums --ddl="CREATE TABLE Albums ( SingerId INT64 NOT NULL, AlbumId INT64 NOT NULL, AlbumTitle STRING(MAX) ) PRIMARY KEY (SingerId, AlbumId), Timestamp TIMESTAMP()"`

### Insert Data

To insert a new row, run the following command:  
`gcloud spanner rows insert my-table --instance=my-instance --database=my-database --json-file=my-data.json`  --or-- --data-string="'SingerId': 1, 'FirstName': 'Marc', 'LastName': 'Richards', 'SingerInfo': 'American singer.'"  

```
gcloud spanner rows insert --database=example-db \
      --table=Singers \
      --data=SingerId=1,FirstName=Marc,LastName=Richards

gcloud spanner rows insert --database=example-db \
      --table=Singers \
      --data=SingerId=2,FirstName=Catalina,LastName=Smith

gcloud spanner rows insert --database=example-db \
      --table=Singers \
      --data=SingerId=3,FirstName=Alice,LastName=Trentor

gcloud spanner rows insert --database=example-db \
      --table=Albums \
      --data=SingerId=1,AlbumId=1,AlbumTitle="Total Junk"

gcloud spanner rows insert --database=example-db \
      --table=Albums \
      --data=SingerId=2,AlbumId=1,AlbumTitle="Green"

gcloud spanner rows insert --database=example-db \
      --table=Albums \
      --data=^:^SingerId=2:AlbumId=2:AlbumTitle="Go, Go, Go"
```
### Query Data

To query a table, run the following command:  
`gcloud spanner sql --instance=my-instance --database=my-database --query="SELECT * FROM my-table"`    
`gcloud spanner databases execute-sql example-db --sql='SELECT SingerId, AlbumId, AlbumTitle FROM Albums`  

To create an index, run the following command:
`gcloud spanner indexes create my-index --instance=my-instance --database=my-database --table=my-table --columns=SingerId`

To query an index, run the following command:
`gcloud spanner sql --instance=my-instance --database=my-database --query="SELECT * FROM my-index"`

To query a table with a filter, run the following command:
`gcloud spanner sql --instance=my-instance --database=my-database --query="SELECT * FROM my-table WHERE SingerId = 1"`

To query a table with a filter and order by, run the following command:
`gcloud spanner sql --instance=my-instance --database=my-database --query="SELECT * FROM my-table WHERE SingerId = 1 ORDER BY AlbumId"`

### Update Data

To update a row, run the following command:
`gcloud spanner rows update my-table --instance=my-instance --database=my-database --json-file=my-data.json`  --or-- --data-string="'SingerId': 1, 'FirstName': 'Marc', 'LastName': 'Richards', 'SingerInfo': 'American singer.'"

### Work with Schemas

To create a table schema, run the following command:  
`gcloud spanner schemas create my-schema --instance=my-instance --database=my-database`

To view the schema of a table, run the following command:  
`gcloud spanner schemas list --instance=my-instance --database=my-database`  

To update the schema of a table, run the following command:  
`gcloud spanner schemas update my-schema --instance=my-instance --database=my-database --json-file=my-schema.json`  


### Delete Data

To delete a row, run the following command:
`gcloud spanner rows delete my-table --instance=my-instance --database=my-database --json-file=my-data.json`  --or-- --data-string="'SingerId': 1, 'FirstName': 'Marc', 'LastName': 'Richards', 'SingerInfo': 'American singer.'"

To delete a table, run the following command:  
`gcloud spanner tables delete my-table --instance=my-instance --database=my-database`  


To delete a database, run the following command:  
`gcloud spanner databases delete my-database --instance=my-instance`      
`gcloud spanner databases delete example-db`  

To delete an instance, run the following command:  
`gcloud spanner instances delete my-instance`  
`gcloud spanner instances delete test-instance`  

To delete all instances, run the following command:  
`gcloud spanner instances list | grep my-instance | cut -d ' ' -f 1 | xargs -I {} gcloud spanner instances delete {}`  