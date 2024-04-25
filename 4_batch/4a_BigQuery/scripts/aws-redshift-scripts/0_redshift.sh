# 1. Manually create a Redshift instance
# Setup Redshift with all defaults and with public access, create a database called 'demodb'
# Add inbound rule for public access to port 5439 with your pubic IP address to VPC security group (default)
# Download 14-day trial Navicat as client
# Donnect to instance endpoint, rather than cluster if using more than one node
# Connection string includes 1)endpoint 2)port <3306> 3) database use 'demodb', it's <'postgres'> by default 3)username 4)password

# 2. Create a database and tables with a new query in Navicat
create-tables.sql
# Refresh and switch to that database

# 3. Prepare Data
# Download and upzip sample data (or use the data in this directory)
# Create a s3 bucket
# Change the bucketname in 'customer-fw-manifest' file **BEFORE** you upload it
# Upload all sample data to your bucket

# 4. Prepare to laod Data
# EDIT the bucket path in the 'load-tables.sql' file for these tables only: part, customer, dwdate

# 5. Load data with a new query in Navicat
load-tables.sql

# 6. Query data with new query in Navicat
query-data.sql