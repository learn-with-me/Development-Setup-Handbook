# Disk Usage Metrics

## Database Size

```sql
-- Print size of the database in use
SELECT pg_size_pretty(pg_database_size('some_database_name'));
```

## Table Size

```sql
-- Measure table size
SELECT pg_size_pretty(pg_relation_size('table_name'));

-- Measure index size
SELECT pg_size_pretty(pg_relation_size('table_index_name'));

-- Measure table size, along with indexes
SELECT pg_size_pretty(pg_total_relation_size('table_name'));

-- Print total column size, average size and percentage occupancy in a table
SELECT
    sum(pg_column_size(column_name)) AS total_size,
    avg(pg_column_size(column_name)) AS average_size,
    sum(pg_column_size(column_name)) * 100.0 / pg_relation_size('table_name') AS percentage
FROM table_name;

-- (Pretty) Print total column size, average size and percentage occupancy in a table
SELECT
    pg_size_pretty(sum(pg_column_size(column_name))) AS total_size,
    pg_size_pretty(avg(pg_column_size(column_name))) AS average_size,
    sum(pg_column_size(column_name)) * 100.0 / pg_relation_size('table_name') AS percentage
FROM table_name;

-- TODO: Yet to fix this query
SELECT
percentile_disc(0.25) within group (order by table_name) p25,
percentile_disc(0.75) within group (order by table_name) p75,
percentile_disc(0.90) within group (order by table_name) p90,
percentile_disc(0.95) within group (order by table_name) p95,
percentile_disc(0.99) within group (order by table_name) p99,
percentile_disc(0.999) within group (order by table_name) p999,
percentile_disc(0.9999) within group (order by table_name) p9999,
max(table_name) max
    FROM (
        SELECT col FROM (
            SELECT t.pk, t.count(column_name) AS col
                FROM table_name t
            GROUP BY 1
        ) a
    ) b;
```
