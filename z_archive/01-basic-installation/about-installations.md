# About Installations

##### Mac installation location

Everything gets installed into a package- or version- directory in `/usr/local/Cellar/`. Then it selectively symlinks executables into `/usr/local/bin`.

Homebrew provides convenient facilities for checking what's linked where, and for linking and unlinking the contents of packages to conventional locations on your path \(as well as for uninstalling them completely\). That includes a higher-level tool for switching between different versions of the same piece of software, which works by unlinking the currently active versions and linking a different version instead. This is much easier and fool-proof than trying to do something similar on your own, particularly with software \(like LaTeX\) that has lots of separate pieces.

##### Mac Package manager

```
Unlike many Linux distributions, MacOS X does not comes with its own package manager.
Without a package manager, it is difficult to track down dependencies (to make a software work) and keep software
up-to-date.

Compelling third-party package managers for Mac
1. Homebrew                // Written in Ruby
2. MacPorts                // Native application written in C + TCL
3. Fink (not as popular)

Install location
Homebrew: /usr/local
MacPorts: /opt/local
Fink: /opt/local

Which one to choose?
There is a world of different opinions out there and it is not an easy choice. Start with one and see if you run into
any real problem. Since based on some developer's feedback online, Homebrew uses unix-conventions better for
installations and it also has a large community support, I am going to start with Homebrew.

Homebrew will warn you when you should install things "natively" (using the library/tool's preferred installer) for
better compatibility.
Also, if you are dealing with python or ruby packages, use a virtual environment wherever possible.

Downside:
Both need XCode command line tools installed.
As per people out there, you are limited with packages on brew. MacPorts has much more to offer.
Question: Do I really need all the other packages?
```

##### Mac Notes

Apple has left /usr/local for "executables, libraries, etc. not included by the basic operating system". `/usr/local/` has permissions `drwxr-xr-x 6 root wheel` keeping `/usr/local/` owned by root means that only processes that run as root/sudo can write to this area.

Homebrew can install stuff without sudo because when it set itself up, it used sudo to make the permission on thedirectory looser so it will be able to do anything inside /usr/local without triggering the password.Homebrew moves the sudo to the initial installation of Homebrew itself, in order to avoid sudo with every brew command.



