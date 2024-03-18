# AWS Elasticache

## Commands

```sh
# List cache clusters
aws elasticache describe-cache-clusters --region us-east-1
```

## Admin Commands

```sh
# Create a redis cache cluster
aws elasticache create-cache-cluster --cache-cluster-id my-cluster --engine redis --cache-node-type cache.t2.micro --num-cache-nodes 1 --region us-east-1

# Create a memcached cache cluster
aws elasticache create-cache-cluster --cache-cluster-id my-cluster --engine memcached --cache-node-type cache.t2.micro --num-cache-nodes 1 --region us-east-1

# Modify a cache cluster
aws elasticache modify-cache-cluster --cache-cluster-id my-cluster --num-cache-nodes 3 --apply-immediately --region us-east-1

# Delete a cache cluster
aws elasticache delete-cache-cluster --cache-cluster-id my-cluster --region us-east-1
```

## Data Commands - Redis

```sh
# Connect to the Redis server
redis-cli -h my-cluster.abc123.0001.usw2.cache.amazonaws.com -p 6379

# Set a key
set mykey myvalue

# Get a key
get mykey
```

## Data Commands - Memcached (telnet)

```sh
# Connect to the Memcached server
telnet my-cluster.abc123.0001.usw2.cache.amazonaws.com 11211

# Set a key
set mykey 0 900 5
myval
STORED

# Get a key
get mykey
VALUE mykey 0 5
myval
END
```

## Data Commands - Memcached (netcat)

An alternative to `telnet` is `netcat` (`nc`). It's a simple Unix utility that reads and writes data across network connections, using TCP or UDP protocol.

```sh
# Connect to the Memcached server
echo -e 'stats\nquit' | nc my-cluster.abc123.0001.usw2.cache.amazonaws.com 11211

# Set a key
echo -e 'set mykey 0 900 5\nmyval\nquit' | nc my-cluster.abc123.0001.usw2.cache.amazonaws.com 11211

# Get a key
echo -e 'get mykey\nquit' | nc my-cluster.abc123.0001.usw2.cache.amazonaws.com 11211
```

## References

* [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/WhatIs.html) | Official docs
