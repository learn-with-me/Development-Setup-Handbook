# Terraform

Terraform is an open source tool created by HashiCorp written in the Go programming language, that allows you to define your infrastructure as code using a simple, declarative language and to deploy and manage that infrastructure across a variety of public cloud providers using a few commands.

## IaaC

There are four core values in the DevOps movement: culture, automation, measurement, and sharing.

There are five broad categories of IaC tools:

* **Ad hoc scripts** - whatever task you were doing manually, break it down into discrete steps, use your favorite scripting language (e.g., `Bash`, `Ruby`, `Python`) to define each of those steps in code, and execute that script on your server.
* **Configuration management tools** - `Chef`, `Puppet`, and `Ansible` are all configuration management tools, which means that they are designed to install and manage software on existing servers. The code looks similar to the Bash script, but using a tool like Ansible offers a number of advantages.
* **Server templating tools** - An alternative to configuration management, tools such as `Docker`, `Packer`, and `Vagrant`. The idea behind server templating tools is to create an image of a server that captures a fully self-contained "snapshot", and launching a bunch of servers and configuring them by running the same code.
    * A virtual machine (VM) emulates an entire computer system, including the hardware. You run a hypervisor, such as VMware, VirtualBox, or Parallels, to virtualize (i.e., simulate) the underlying CPU, memory, hard drive, and networking. You can define VM images as code using tools such as Packer and Vagrant.
    * A container emulates the user space of an OS.2 You run a container engine, such as Docker, CoreOS rkt, or cri-o, to create isolated processes, memory, mount points, and networking. You can define container images as code using tools such as Docker and CoreOS rkt.
* **Orchestration tools** - To manage VMs and containers. Handling these tasks is the realm of orchestration tools such as `Kubernetes`, `Marathon/Mesos`, Amazon Elastic Container Service (`Amazon ECS`), `Docker Swarm`, and `Nomad`.
* **Provisioning tools** - provisioning tools such as `Terraform`, `CloudFormation`, `OpenStack Heat`, and `Pulumi` are responsible for creating the servers themselves.

## Simplest script

This snippet instructs Terraform to make API calls to AWS to deploy a server.

```tf
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}
```

```sh
# To deploy it, just run the follwing
$ terraform init

# To preview what changes would terraform make
$ terraform plan

# To deploy the infrastructure
$ terraform apply
```

## Questions

### Transparent Portability

Whether Terraform supports transparent portability between different cloud providers?

The reality is that you can’t deploy “exactly the same infrastructure” in a different cloud provider because the cloud providers don’t offer the same types of infrastructure!

Terraform’s approach is to allow you to write code that is specific to each provider, taking advantage of that provider’s unique functionality, but to use the same language, toolset, and IaC practices under the hood for all providers.

### Terraform Trade-offs to consider

**Configuration management versus provisioning**:
Once you have an `image` created from a Dockerfile or Packer template, all that’s left to do is `provision the infrastructure` for running those images. And when it comes to provisioning, a provisioning tool is going to be your best choice.

**Mutable infrastructure versus immutable infrastructure**:
If you’re not using server templating tools, a popular combination is to use Terraform to provision your servers and Ansible to configure each one. This is because, Configuration management tools such as Chef, Puppet, and Ansible typically default to a `mutable infrastructure paradigm`. Over time, as you apply more and more updates, each server builds up a unique history of changes. As a result, each server becomes slightly different than all the others, leading to subtle configuration bugs that are difficult to diagnose and reproduce. If you’re using a provisioning tool such as Terraform to deploy machine images created by Docker or Packer, most `changes` are actually deployments of a completely new server.

**Procedural language versus declarative language**:
Chef and Ansible encourage a procedural style in which you write code that specifies, step by step, how to achieve some desired end state. Terraform, CloudFormation, Puppet, OpenStack Heat, and Pulumi all encourage a more declarative style in which you write code that specifies your desired end state, and the IaC tool itself is responsible for figuring out how to achieve that state. Example, say you create 10 servers with each Ansible and Terraform. Imagine traffic has gone up, and you want to increase the number of servers to 15. With Ansible, the procedural code you wrote earlier is no longer useful; if you just updated the number of servers to 15 and reran that code, it would deploy 15 new servers, giving you 25 total! So instead, you need `to be aware` of what is already deployed and write a totally new procedural script to add the five new servers.

**General-purpose language versus domain-specific language**:
Chef and Pulumi allow you to use a `general-purpose programming language` (GPL) to manage infrastructure as code: Chef supports Ruby; Pulumi supports a wide variety of GPLs, including JavaScript, TypeScript, Python, Go, C#, Java, and others. Terraform, Puppet, Ansible, CloudFormation, and OpenStack Heat each use a `domain-specific language` (DSL) to manage infrastructure as code: Terraform uses HCL; Puppet uses Puppet Language; Ansible, CloudFormation, and OpenStack Heat use YAML (CloudFormation also supports JSON). DSLs are designed for use in one specific domain, whereas GPLs can be used across a broad range of domains. DSLs are easier to learn, clearer and more concise, more uniform. While, if you know the programming language well, GSLs can be advantageous as well.

**Master versus masterless**:
By default, Chef and Puppet require that you run a master server for storing the state of your infrastructure and distributing updates. Ansible, CloudFormation, Heat, Terraform, and Pulumi are all masterless by default. For example, Terraform communicates with cloud providers using the cloud provider’s APIs, so in some sense, the API servers are master servers, except that they don’t require any extra infrastructure or any extra authentication mechanisms (i.e., just use your API keys). Ansible works by connecting directly to each server over SSH, so again, you don’t need to run any extra infrastructure or manage extra authentication mechanisms (i.e., just use your SSH keys).

**Agent versus agentless**:
Chef and Puppet require you to install agent software on each server that you want to configure. The agent typically runs in the background on each server and is responsible for installing the latest configuration management updates. All of these extra moving parts introduce a large number of new failure modes into your infrastructure. Ansible, CloudFormation, Heat, Terraform, and Pulumi do not require you to install any extra agents. You just issue commands, and the cloud provider’s agents execute them for you on all of your servers. With Ansible, your servers need to run the SSH daemon, which is common to run on most servers anyway.

**Paid versus free offering**:
CloudFormation and OpenStack Heat are completely free. Terraform, Chef, Puppet, Ansible, and Pulumi are all available in free versions and paid versions. The free versions of Terraform, Chef, Puppet, and Ansible can all be used successfully for production use cases. A key part of managing infrastructure as code is managing state, and Pulumi, by default, uses Pulumi Service as the backend for state storage. You can switch to other supported backends for state storage, such as Amazon S3, Azure Blob Storage, or Google Cloud Storage, but the [Pulumi backend documentation](https://www.pulumi.com/docs/concepts/state/) explains that only Pulumi Service supports transactional checkpointing (for fault tolerance and recovery), concurrent state locking (to prevent corrupting your infrastructure state in a team environment), and encrypted state in transit and at rest. So if you’re going to use Pulumi, you more or less have to pay for Pulumi Service.

**Use of multiple tools together**:

You use Terraform to deploy all the underlying infrastructure, including the network topology, data stores, load balancers, and servers. You then use Ansible to deploy your apps on top of those servers. There are many ways to get Ansible and Terraform to work together (e.g., Terraform adds special tags to your servers, and Ansible uses those tags to find the servers and configure them). The major downside is that using Ansible typically means that you’re writing a lot of procedural code, with mutable servers, so as your codebase, infrastructure, and team grow, maintenance can become more difficult.

Ideally you want was an open source, cloud-agnostic provisioning tool with a large community, a mature codebase, and support for immutable infrastructure, a declarative language, a masterless and agentless architecture, and an optional paid service. Terraform, although not perfect, comes the closest to meeting all of our criteria.


## References

* [Terraform: Up and Running, 3rd Edition, Yevgeniy Brikman](https://learning.oreilly.com/library/view/terraform-up-and/9781098116736/) | O'Reilly
    * Sample [github code](https://github.com/brikis98/terraform-up-and-running-code) for the book
* [Terraform Modules](https://docs.gruntwork.io/library/reference/) | Gruntwork
