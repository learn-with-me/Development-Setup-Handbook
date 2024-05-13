# Terraform Components

## Provider

Providers are platforms to create infrastructure on. E.g., AWS, GCP, Azure, etc.

```tf
provider "aws" {
  region = "us-east-2"
  profile = "profile_name"
}
```

If you're using multiple AWS profiles, specify the profile name.

## Resource

Resources are the services you create within an infrastructure.

```tf
resource "<PROVIDER>_<TYPE>" "<NAME>" {
  [CONFIG ...]
}

resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
```

Each resource supports different arguments. Some are required, others are optional. Look up the terraform [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) for all valid arguments and their values.

> It is a good practice to add tags to each resource.

By default, AWS does not allow any incoming or outgoing traffic from an EC2 Instance. To allow the ingress, you need to create a security group.

```tf
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-sg-example"
  }
}
```

> `CIDR` blocks are a concise way to specify IP address ranges.
> For example, a CIDR block of 10.0.0.0/24 represents all IP addresses between 10.0.0.0 and 10.0.0.255. The CIDR block 0.0.0.0/0 is an IP address range that includes all possible IP addresses, so this security group allows incoming requests on port 8080 from any IP.

Simply creating a security group isn’t enough; you need to tell the EC2 Instance to actually use it by passing the ID of the security group into the `vpc_security​_group_ids` argument of the `aws_instance` resource.

An `expression` in Terraform is anything that returns a value. One particularly useful type of expression is a `reference`, which allows you to access values from other parts of your code. To access the ID of the security group resource, you are going to need to use a resource attribute reference, which uses the following syntax: `<PROVIDER>_<TYPE>.<NAME>.<ATTRIBUTE>`. An attribute could be one of the exported ones by the resource, like `id`.
