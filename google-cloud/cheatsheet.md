# GCP Cheatsheet

##### Commands

```
gcloud -h                               // gcloud help
gcloud config --help                    // Verbose help
gcloud help config                      // Verbose help
gcloud auth list                        // To list the active account
gcloud config list                      // List configs in our environment
gcloud config list --all                // List all other properties
gcloud config list project              // Lists projects associated with the account
gcloud config set compute/zone ...      // Set the zone based on your preference
gcloud config set compute/region ...    // Set the default region based on your preference

gsutil                                  // Used to manage Cloud Storage resources
                                        // includes creating and deleting buckets and objects, copying and moving
                                           storage data, and managing bucket and object ACLs.
                                           Also let you transfer data in and out of your Cloud Shell instance.
gsutil mb gs://my-bucket-55             // Creating a Cloud Storage bucket
gsutil cp test.dat gs://my-bucket-55    // Upload some data to the bucket you created


Create a new instance with gcloud (VM with Compute Engine)
gcloud compute instances create --help                                  // Run to see all the defaults
gcloud compute instances create gcelab --zone us-central1-c            // create a new virtual machine instance
gcloud compute disks create mydisk --size=200GB --zone us-central1-c    // Create a new persistent disk
gcloud compute instances attach-disk gcelab --disk mydisk --zone us-central1-c   // Attaching the disk
gcloud compute ssh gcelab --zone us-central1-c                          // SSH into the machine

Persistent Disk handling
========================
ls -l /dev/disk/by-id/                                                  // Find the disk device by listing disk devices
sudo mkdir /mnt/mydisk                  // Make a mount point
sudo mkfs.ext4 -F -E lazy_itable_init=0,lazy_journal_init=0,discard
   /dev/disk/by-id/scsi-0Google_PersistentDisk_persistent-disk-1        // Format the disk with single ext4 filesystem
sudo mount -o discard,defaults
   /dev/disk/by-id/scsi-0Google_PersistentDisk_persistent-disk-1 /mnt/mydisk   // Mount disk to the instance

By default the disk will not be remounted if your virtual machine restarts. To make sure the disk is remounted on
restart, you need to add an entry into /etc/fstab.
> sudo nano /etc/fstab
Add line below in the file
/dev/disk/by-id/scsi-0Google_PersistentDisk_persistent-disk-1 /mnt/mydisk ext4 defaults 1 1

Local SSD
Google Compute Engine can also attach local SSDs. Local SSDs are physically attached to the server hosting the virtual
machine instance to which they are mounted. This tight coupling offers superior performance, with very high input/output
operations per second (IOPS) and very low latency compared to persistent disks.
There are other drawbacks to think about as well. Remember.

Types of Persistent Disks
1. Standard persistent disk
2. SSD persistent disk


Install a NGINX web server
sudo su -                         // get root access using sudo
apt-get update                    // As the root user, update your OS
apt-get install nginx -y          // Install NGINX
ps auwx | grep nginx              // Check that NGINX is running
ps aux | grep nginx               // Check that NGINX is running
```

##### 



