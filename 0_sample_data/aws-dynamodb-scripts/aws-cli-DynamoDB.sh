# for DynamoDB - work with the data in a DynamoDB database
aws dynamodb create-table --table-name MusicCollection --attribute-definitions AttributeName=Artist,AttributeType=S AttributeName=SongTitle,AttributeType=S --key-schema AttributeName=Artist,KeyType=HASH AttributeName=SongTitle,KeyType=RANGE --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5

# List Tables
aws dynamodb list-tables

# Put Item - TIP: be sure to change to the directory for item.json
aws dynamodb put-item --table-name MusicCollection --item file://item1.json --return-consumed-capacity TOTAL

# Get Item based on Key
aws dynamodb get-item --table-name MusicCollection --key file://key.json

# Put another item
aws dynamodb put-item --table-name MusicCollection --item file://item2.json --return-consumed-capacity TOTAL

# Execute Query
aws dynamodb query --table-name MusicCollection --key-condition-expression 'Artist = :a AND SongTitle = :t1' --expression-attribute-values '{":a": {"S": "Lorde"}, ":t1": {"S": "Supercut"}}'