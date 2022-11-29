# IAM

## Create User

```sh
# Create group
$ aws iam create-group --group-name <group_name>
```

```sh
# Attach policies
$ aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonSQSFullAccess --group-name <group_name>
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess --group-name <group_name>
```

```sh
# Create User
aws iam create-user --user-name <user_name>
```

```sh
# Add user to the group
aws iam add-user-to-group --user-name <user_name> --group-name <group_name>
```

```sh
# Create access key
aws iam create-access-key --user-name <user_name>

# Note: Record the SecretAccessKey and AccessKeyID in the returned JSON output
```

```sh
# configure the aws client to use your new IAM user
aws configure           # Use your new access and secret key here
aws iam list-users      # you should see a list of all your IAM users here

# Because "aws configure" doesn't export these vars for applications to use, we export them now
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
```
