# DynamoDB Commands

## Common commands

### List tables

```sh
# List tables
$ aws dynamodb list-tables --endpoint-url http://localhost:8000

# Using different profile
$ aws dynamodb list-tables --endpoint-url http://localhost:8000 --profile myprofile
```

### Create table

```sh
# Create a table
$ aws dynamodb create-table \
    --table-name Music \
    --attribute-definitions \
        AttributeName=Artist,AttributeType=S \
        AttributeName=SongTitle,AttributeType=S \
    --key-schema AttributeName=Artist,KeyType=HASH AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --table-class STANDARD
```

### Query Records

```sh
# Query records
$ aws dynamodb query --table-name Music --key-conditions file://key-conditions.json
```

### Add/Update Records

```sh
# Upsert a record
$ aws dynamodb put-item \
    --table-name Music \
    --item \
        '{"Artist": {"S": "No One You Know"}, "SongTitle": {"S": "Call Me Today"}, "AlbumTitle": {"S": "Somewhat Famous"}}' \
    --return-consumed-capacity TOTAL  
```

## References

* [Amazon DynamoDB Introduction](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html) | Official guide
    * [Data Modeling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/data-modeling.html) | DynamoDB Official guide
    * [Best Practices](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/best-practices.html) | DynamoDB Official guide
* [DynamoDB Guide](https://www.dynamodbguide.com/key-concepts)
* [LocalStack](https://github.com/localstack/localstack) | GitHub
* [DynamoDB](https://docs.localstack.cloud/user-guide/aws/dynamodb/) | LocalStack
* [How to setup DynamoDB locally](https://fabiorosado.dev/blog/dynamodb-using-locally/)
* [dynamodb-kotlin-module](https://github.com/oharaandrew314/dynamodb-kotlin-module) | GitHub
