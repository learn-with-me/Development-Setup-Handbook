# EC2 Commands

```shell
# List all instances
aws ec2 ls

# List all ec2 instances
aws ec2 describe-instances
aws ec2 describe-instances --region us-west-2
aws ec2 describe-instances --instance-ids i-1234567890abcdef0
aws ec2 describe-instances --filters "Name=tag:Name,Values=my-instance-name"

# Stop an instance
aws ec2 stop-instances --instance-ids i-1234567890abcdef0

# Start an instance
aws ec2 start-instances --instance-ids i-1234567890abcdef0
```

## Admin Commands

```sh
# Launch an instance
aws ec2 run-instances --image-id ami-abc12345 --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e

# Terminate an instance
aws ec2 terminate-instances --instance-ids i-1234567890abcdef0
```
