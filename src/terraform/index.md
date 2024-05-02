# Terraform

Terraform code is written in the `HashiCorp Configuration Language` (HCL) in files with the extension `.tf`. It is a declarative language, so your goal is to describe the infrastructure you want, and Terraform will figure out how to create it.

## Usage

### Installation

```sh
# Install Terraform
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform

# Verify Installation
$ terraform -help
$ terraform -version
```

### Plugin

```sh
# Enable tab completion
$ terraform -install-autocomplete

# This will update `.bashrc` or `.zshrc` depending on the shell you are in.
# Once the autocomplete support is installed, you will need to restart your shell.
```

### Initialize

```sh
# Initialize the project, which downloads a plugin called a provider that lets Terraform interact with Docker.
$ terraform init
```

Provision the `NGINX` server container with apply. When Terraform asks you to confirm type `yes` and press `ENTER`.

```sh
$ terraform apply
```

Verify the existence of the NGINX container by visiting [localhost:8000](http://localhost:8000/)

```sh
# To stop the container
$ terraform destroy
```

## Connect with AWS

For Terraform to be able to make changes in your AWS account, you will need to set the AWS credentials for the IAM user you created earlier as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

```sh
$ export AWS_ACCESS_KEY_ID=(your access key id)
$ export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

Note that these environment variables apply only to the current shell.

> In addition to environment variables, Terraform supports the same authentication mechanisms as all AWS CLI and SDK tools. Therefore, it’ll also be able to use credentials in `$HOME/.aws/credentials`, which are automatically generated if you run `aws configure`, or IAM roles, which you can add to almost any resource in AWS.

## Getting started

Create `main.tf` in a folder with basic configuration. Go into the folder where you created main.tf and run the `terraform init` command, which is needed only once, but is also idempotent. This tells Terraform to scan the code, figure out which providers you’re using, and download the code for them. By default, the provider code will be downloaded into a `.terraform` folder, which is Terraform’s scratch directory (you may want to add it to `.gitignore`). Terraform will also record information about the provider code it downloaded into a `.terraform.lock.hcl` file.

Next, run `terraform plan` command to see what Terraform will do before actually making any changes. This is a great way to sanity-check your code before unleashing it onto the world.

Run `terraform apply` to actually create the Instance.

Files to commit:
1. All `*.tf` files
2. `.terraform.lock.hcl` file

Files to ignore
1. `.terraform/` - temp sratch directory
2. `*.tfstate` - files for managing state
3. `*.tfstate.backup`

## References

* [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli?in=terraform%2Faws-get-started) Official documentation
* [Terraform](https://www.terraform.io/) home page
* AWS
    * [A Comprehensive Guide to Authenticating to AWS on the Command Line](https://blog.gruntwork.io/a-comprehensive-guide-to-authenticating-to-aws-on-the-command-line-63656a686799) | Medium blog
* GitHub Codespaces
    * [Run Terraform within GitHub Codespaces](https://dailystuff.nl/blog/2022/run-terraform-within-github-codespaces)
    * [Set up a dev container for Terraform in GitHub Codespaces](https://www.techielass.com/set-up-a-dev-container-for-terraform-in-github-codespaces/)
