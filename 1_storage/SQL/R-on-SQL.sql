-----------------0.Pre-Req------------------------
--verify version, must be SQL Server 2016
select @@version

-----------------1.Install and Configure----------
-- install R-services
-- navigate to c:\sql_server_install
-- setup.up --> install R-services

--turn on the ability to run external scripts
Exec sp_configure  'external scripts enabled', 1  

--run and then RESTART SQL SERVER service
Reconfigure  with  override  

--verify, output should be '1'
Exec sp_configure  'external scripts enabled' 

-----------------2. Test R-----------------------
--run a test R script
exec sp_execute_external_script  @language =N'R',  
@script=N'OutputDataSet<-InputDataSet',    
@input_data_1 =N'select 1 as helloGoogle'  
with result sets (([helloGoogle] int not null));  
go 

-----------------3. Learn More-------------------
--full reference here
https://msdn.microsoft.com/en-us/library/mt696069.aspx