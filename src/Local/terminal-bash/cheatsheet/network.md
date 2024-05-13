# Cheatsheet - Network

## Networking

```sh
# Find your IP address
$ ifconfig
$ ifconfig en0
$ ifconfig en0 | grep inet
$ ifconfig en0 | grep inet | awk '{print $2}'

# Check if a website is up and running
$ ping <website_or_ip>

# See path through the internet you're taking to get to the website, including latency
$ traceroute <website_or_ip>

# DNS of a website
$ dig <website_or_ip>

# Flush DNS cache
$ sudo killall -HUP mDNSResponder
$ sudo killall -HUP mDNSResponderHelper
$ sudo dscacheutil -flushcache
```
