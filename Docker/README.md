# Docker \(Community Edition\)

> Note: No additional software required, such as VirtualBox since Hypervisor frameworks are now built-in OS
>
> * macOS: HyperKit based on xhyve/bhyve Virtual Machine \(Already present starting Yosemite 10.10+\)
> * Windows: Hyper-V Virtual Machine \(Already present starting Windows 10 64-bit\)

##### Installation

```
Option 1:
docker.com/getdocker                             // Download OS specific version and install.
https://docs.docker.com/engine/installation      // OS-specific instructions. For production.

Option 2:
$ brew cask install docker                       // Install Docker
$ brew cask reinstall docker                     // Reinstall if already installed

Installation Location: /usr/local/bin

Notes:
Once you try to kick-off Docker from Applications folder, here is what is going to happen next:
1. Docker will ask you for permissions one-time to be able to setup networking utilities and other links.
2. Ask you to sign-up for Docker-cloud or sign-in

If you are unable to meet system requirements as stated above, you'll have to download Docker Toolbox for additional
setup. Which will be covered at some point later since I do not have access to such machine at the moment.
```

##### Verification

```
$ docker --version       // Display installed version number
$ docker version         // Display more details version information with client and server
$ docker info            // Display system-wide information

$ docker-compose --version    // Docker Compose version
$ docker-machine --version    // Docker Machine version

$ env | grep DOCKER      // If this command does not return anything, you are all set to use Docker for Mac
                         // If it returns env variables, you need to unset them by running $ unset <var_name>
                         // Or you can use this command for bash shell $ unset ${!DOCKER_*}
```

##### Good to know

```
The Docker for Mac application does not use docker-machine to provision that VM; but rather creates and manages it
directly.
Docker exposes the docker API on a socket in /var/run/docker.sock. Since this is the default location where docker
will look if no environment variables are set, you can start using docker and docker-compose without setting any
environment variables.
With Docker for Mac, you get only one VM, and you don’t manage it. It is managed by the Docker for Mac application,
which includes autoupdate to update the client and server versions of Docker.
If you need several VMs and want to manage the version of the Docker client or server you are using, you can continue
to use docker-machine, on the same machine.
```

##### Resources

```
https://docs.docker.com/docker-for-mac/docker-toolbox/#the-docker-for-mac-environment
https://docs.docker.com/docker-for-mac/docker-toolbox/#docker-toolbox-and-docker-for-mac-coexistence
```



