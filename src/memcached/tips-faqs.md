# Tips - FAQs

## Debugging

You "can" dump keys via the debug interface `stats cachedump`, but that will only ever be a partial dump, and is slow.

## Caching Sessions

TBD

## Get vs MultiGet

They both have their own use. Fetching a single item from memcached still requires a network roundtrip and a little processing. Use a multi-get when you need more than one key at a time.

## Key Expiration

When items expire, total keys do not decrease right away.
Expiration in memcached is lazy. In general, an item cannot be known to be expired `until` something looks at it.

You can add billions of items to memcached that all expire at the exact same second, but no additional work is performed during that second by memcached itself.

## List all keys

With memcached, you can't list all keys. There is a debug interface, but that is not an advisable usage.

Memcached as a caching service cannot support the ability to safely walk keys without locking out all other operations. Adding indexes, multi-versioning, etc, can make this possible but will lower memory and cpu efficiency.

## Persistent Storage

TBD

## References

* [Programming FAQ](https://github.com/memcached/memcached/wiki/ProgrammingFAQ) wiki
* [Don't cache your sessions in Memcached](https://dormando.livejournal.com/495593.html) blog
* [Warm Restart](https://github.com/memcached/memcached/wiki/WarmRestart) wiki
* [Persistent Memory](https://memcached.org/blog/persistent-memory/) blog
