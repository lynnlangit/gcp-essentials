# Set up MySQL instance 
# 1. Manually setup single node dev edition with MySQL all defaults and with public access

# Get Client
# 2. download 14-day trial Navicat 
# connect to instance endpoint, rather than cluster if using more than one node
# connection string includes 1)endpoint 2)port <3306> 3)username 4)password

# 3. Create Database via a 'new query...' in Navicat
Create-Northwind.sql
# refresh and switch to that database

# 4. Load Data via a 'new query...' in Navicat
AddData-Northwind.sql

# 5. Query Data via a 'new query...' in Navicat'
Query-Northwind.sql