--Load data using this format
--COPY table_name [ column_list ] FROM data_source CREDENTIALS access_credentials [options] 
--example
/*
copy table from 's3://<your-bucket-name>/load/key_prefix' 
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<Your-Secret-Access-Key>' 
options;
*/

--Update paths for 'part', 'customer' and 'dwdate' to your s3://<my bucket>/load....
copy part from 's3://demo-load-redshift-lynnlangit/load/part-csv.tbl' 
credentials 'aws_access_key_id=somePublicKey;aws_secret_access_key=somePrivateKey' 
csv
null as '\000';

copy supplier from 's3://awssampledb/ssbgz/supplier.tbl' 
credentials 'aws_access_key_id=somePublicKey;aws_secret_access_key=somePrivateKey' 
delimiter '|' 
gzip
region 'us-east-1';

copy customer from 's3://demo-load-redshift-lynnlangit/load/customer-fw-manifest' 
credentials 'aws_access_key_id=somePublicKey;aws_secret_access_key=somePrivateKey' 
fixedwidth 'c_custkey:10, c_name:25, c_address:25, c_city:10, c_nation:15, c_region :12, c_phone:15,c_mktsegment:10'
maxerror 10 
acceptinvchars as '^'
manifest;

copy dwdate from 's3://demo-load-redshift-lynnlangit/load/dwdate-tab.tbl' 
credentials 'aws_access_key_id=somePublicKey;aws_secret_access_key=somePrivateKey' 
delimiter '\t' 
dateformat 'auto';

copy lineorder from 's3://awssampledb/load/lo/lineorder-single.tbl' 
credentials 'aws_access_key_id=somePublicKey;aws_secret_access_key=somePrivateKey' 
gzip
compupdate off
region 'us-east-1';
