# SNS Commands

```shell
# Publish to a topic
$ aws sns publish --topic-arn arn:aws:sns:us-east-1:546419318123:my-topic --message "Hello!"

# Subscribe to a topic
$ aws sns subscribe --topic-arn arn:aws:sns:us-east-1:123456789012:my-topic --protocol email --notification-endpoint example@example.com
```

## Admin commands

```sh
# Create a topic
aws sns create-topic --name my-topic

# List topics
aws sns list-topics

# Delete a topic
aws sns delete-topic --topic-arn arn:aws:sns:us-east-1:123456789012:my-topic
```
