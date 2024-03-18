# AWS CLI

## V2 vs V1

The AWS CLI v2 offers several [new features](https://aws.amazon.com/blogs/developer/aws-cli-v2-is-now-generally-available/) including improved installers, new configuration options such as AWS IAM Identity Center (successor to AWS SSO), and various interactive features. 

## Tools

```shell
# Import credentials from the .csv files generated in the AWS Console.
$ aws configure import --csv file://path/to/creds.csv

# A guided walkthrough of configuring AWS credentials
$ aws configure wizard

# Configuring and using credentials through AWS SSO
$ aws configure sso

# Auto complete
$ complete -C aws_completer aws
$ aws cloud<TAB>
$ aws dynamodb update-table --table-name MyTable<TAB>

# Wizards typically combine multiple AWS API calls together in order to create, update, or delete AWS resources
# Wizards available for the configure, dynamodb, iam, and lambda commands
$ aws <service-name> wizard <wizard-name>
$ aws dynamodb wizard new-table
```

## Configure profile

To configure a specific profile in the AWS CLI, you can use the `aws configure` command and provide the profile name using the `--profile` flag. Here are the steps:

1. Open a terminal or command prompt.

2. Run the following command:

    ```bash
    aws configure --profile your-profile-name
    ```

    Replace `your-profile-name` with the desired name for your AWS CLI profile.

3. You will be prompted to enter the following information:

    - **AWS Access Key ID:** Enter your AWS access key.
    - **AWS Secret Access Key:** Enter your AWS secret key.
    - **Default region name:** Enter your default AWS region.
    - **Default output format:** You can leave this blank or enter your preferred output format (e.g., `json`).

4. After entering the required information, the AWS CLI will create a configuration file with the specified profile in your home directory. The default location for this file is `~/.aws/credentials`. It also stores the other settings you entered in `~/.aws/config`.

Now, when you run AWS CLI commands, you can specify the profile using the `--profile` flag, like this:

```sh
$ aws s3 ls --profile your-profile-name
```

This allows you to manage multiple AWS profiles on the same machine, each with its own set of credentials and configurations.

## Script

```sh
export AWS_ACCOUNT_ID=121212121212
export AWS_DEFAULT_REGION=us-east-1
AWS_DEFAULT_ROLE_NAME=personal-iot

# login to an account if necessary
s2al () { saml2aws login --skip-prompt --profile=${1} --role="arn:aws:iam::${2}:role/${AWS_DEFAULT_ROLE_NAME}"; }

# inject the active credentials for an account into your env
s2a () { eval $(saml2aws script --shell=bash --skip-prompt --profile=${1}); }
# shortcut to remember who you are (and which account you are in)
awho () { aws sts get-caller-identity; }

# these are the aliases to trigger login (if necessary)
alias astage="s2al stage ${AWS_ACCOUNT_ID}"

# these are the aliases to trigger account switch
alias sstage="s2a stage"

# these are the aliases to trigger account login (if necessary) and switch
alias jstage="s2al stage ${AWS_ACCOUNT_ID} && s2a stage"
```

## Storing Secrets


