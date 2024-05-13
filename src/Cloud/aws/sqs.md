# SQS Commands

```shell
# Send a message
aws sqs send-message --queue-url https://sqs.us-east-1.amazonaws.com/123456789012/my-queue --message-body "Hello, world!"

# Receive a message
aws sqs receive-message --queue-url https://sqs.us-east-1.amazonaws.com/123456789012/my-queue

# Delete a message
aws sqs delete-message --queue-url https://sqs.us-east-1.amazonaws.com/123456789012/my-queue --receipt-handle MsgReceiptHandle
```

## Admin Commands

```sh
# Create a queue
aws sqs create-queue --queue-name my-queue

# List queues
aws sqs list-queues

# Delete a queue
aws sqs delete-queue --queue-url https://sqs.us-east-1.amazonaws.com/123456789012/my-queue
```
