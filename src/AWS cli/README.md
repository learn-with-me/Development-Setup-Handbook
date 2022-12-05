# AWS CLI

1. [CLI Configuration](./cli-configuration.md)
2. [IAM](./iam.md)
3. [S3](./s3.md)

## Prerequisites

- AWS Account
- IAM keys

## Installation

```sh
$ curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
$ sudo installer -pkg AWSCLIV2.pkg -target /

The `-o` option specifies the file name that the downloaded package is written to. In this example, the file is written to AWSCLIV2.pkg in the current folder.

Verify installation
$ which aws
$ aws --version
```

### Running AWS CLI 2 Docker image

```sh
$ docker run --rm -it amazon/aws-cli command
$ docker run --rm -it amazon/aws-cli --version
```

## References

- [Prerequisites to AWS CLI 2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-prereqs.html)
- [CLI 2 Installation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html)
- [Configuration Basics](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
