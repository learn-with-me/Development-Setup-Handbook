# Memcached

## Installation

```sh
# Install memcached locally
$ brew install memcached

## Verify installation
$ memcached --version
$ memcached -V
```

## Starting service

> Run memcached in a screen session with `-vv` or `-vvv` to have it print what it's doing.

```sh
# To start memcached in background
$ brew services start memcached

# if you don't want/need a background service you can just run:
$ memcached -l localhost
```

## Commands

```sh
# Dump all keys
$ echo "stats cachedump 1 0" | nc localhost 11211

# Flush all keys
echo 'flush_all' | nc localhost 11211
```

## Resources

* [Official Wiki](https://github.com/memcached/memcached/wiki)
* [AWS Elasticache](https://docs.aws.amazon.com/cli/latest/reference/elasticache/)
