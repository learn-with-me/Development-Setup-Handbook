# Performance Considerations

Postgres itself actually tracks access patterns of your data and will on its own keep frequently accessed data in cache.

Generally you want your database to have a cache hit rate of about `99%`. If you find yourself with a ratio significantly lower than 99% then you likely want to consider increasing the cache available to your database. You can find your cache hit rate with:

```sql
SELECT
       sum(heap_blks_read) as heap_read, 
       sum(heap_blks_hit) as heap_hit, 
       (sum(heap_blks_hit) - sum(heap_blks_read)) / sum(heap_blks_hit) as ratio
FROM
     pg_statio_user_tables;
```

## Indexes

The other primary piece for improving performance is `indexes`. While accessing data from cache is faster than disk, even data within memory can be slow if Postgres must parse through hundreds of thousands of rows to identify if they meet a certain condition. To generate a list of your tables in your database with the largest ones first and the percentage of time which they use an index you can run:

```sql
SELECT
      relname, 100 * idx_scan / (seq_scan + idx_scan) percent_of_times_index_used, 
      n_live_tup rows_in_table
FROM
     pg_stat_user_tables
WHERE
     seq_scan + idx_scan > 0
ORDER BY
     n_live_tup DESC;
```

While there is no perfect answer, if you’re not somewhere around 99% on any table over 10,000 rows you may want to consider adding an index. When examining where to add an index you should look at what kind of queries you’re running. Generally you’ll want to add indexes where you’re looking up by some other id or on values that you’re commonly filtering on such as created_at fields.

> Note: If you’re adding an index on a production database use `CREATE INDEX CONCURRENTLY` to have it build your index in the background and not hold a lock on your table. The limitation to creating indexes [concurrently](https://www.postgresql.org/docs/9.1/sql-createindex.html#SQL-CREATEINDEX-CONCURRENTLY) is they can typically take 2-3 times longer to create and can’t be run within a transaction. Though for any large production site these trade-offs are worth the trade-off in experience to your end users.

## Index Cache Hit Rate

```sql
SELECT
   sum(idx_blks_read) as idx_read, 
   sum(idx_blks_hit) as idx_hit, 
   (sum(idx_blks_hit) - sum(idx_blks_read)) / sum(idx_blks_hit) as ratio
FROM
     pg_statio_user_indexes;
```

## References

- [Cache](https://www.postgresguide.com/performance/cache/) | Postgres Guide
- [Postgres Performance](https://devcenter.heroku.com/categories/postgres-performance) | Heroku
