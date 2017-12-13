# Docker

> Note: No additional software required, such as VirtualBox since Hypervisor frameworks are now built-in OS
>
> * macOS: xhyve VM using Hypervisor.framework \(Already present starting Yosemite 10.10+\)
> * Windows: Hyper-V VM \(Already present starting Windows 10 64-bit\)

##### Installation

```
Start with Community Edition

Option 1:
docker.com/getdocker                             // Download OS specific version and install.
https://docs.docker.com/engine/installation      // OS-specific instructions. For production.

Option 2:
$ brew cask install docker                       // Install Docker
$ brew cask reinstall docker                     // Reinstall if already installed

If you are unable to meet system requirements as stated above, you'll have to download the toolbox for additional setup
```

##### Verification

```
$ docker --version       // Display installed version number
$ docker version         // Display more details version information with client and server
$ docker info            // Display system-wide information
```
