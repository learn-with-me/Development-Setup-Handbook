# Vagrant Cheatsheet

##### Info

```
> vagrant -v                        // get the vagrant version
> vagrant status                    // Status of the vagrant machine
> vagrant global-status             // Status of all vagrant machines
> vagrant global-status --prune     // Same as above, but prunes invalid entries
> vagrant provision --debug         // More verbose output
> vagrant push                      // Deploy code. (Lookup on how to configure deploying code)
> vagrant up --provision | tee provision.log    // Runs vagrant up, forces provisioning and logs all output to a file

> vagrant ssh                    // Connects to machine via SSH
> vagrant ssh <boxname>          // If you give your box a name in your Vagrantfile, you can ssh into it with box-name
```

##### Creating/Destroying

```
> vagrant init                // Initialize Vagrant with a Vagrantfile and .vagrant directory
> vagrant init <boxpath>      // Initialize Vagrant with a specific box

Find a box at
https://app.vagrantup.com/boxes/search

> vagrant destroy             // Stops and deletes all traces of the vagrant machine
> vagrant destroy -f          // Same as above, without confirmation
```

##### Start/Stop

```
> vagrant up                    // Starts vagrant environment
> vagrant resume                // Resume a suspended machine
> vagrant provision             // Forces reprovisioning of the vagrant machine
> vagrant reload                // Restarts vagrant machine, loads new Vagrantfile configuration
> vagrant reload --provision    // Restarts the machine and force provisioning
> vagrant halt                  // Stops the vagrant machine
> vagrant suspend               // Suspends a virtual machine (remembers state)
```

##### Boxes

```
> vagrant box list                // See a list of all installed boxes on your computer
> vagrant box add <name> <url>    // Download a box image to your computer
> vagrant box add precise64 http://files.vagrantup.com/precise64.box        // Example
> vagrant box outdated            // Check for vagrant box updates
> vagrant boxes remove <name>     // Deletes a box from the machine
> vagrant package                 // Packages a running virtualbox env in a reusable box
```

##### Saving progress

```
> vagrant snapshot save [options] [vm-name] <name>     // Allows us to save to we can rollback at later time.
                                                       // vm-name is ofter default
```



