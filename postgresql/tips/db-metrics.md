# Database & Table Metrics

## Schema

```
-- Print database size in use
SELECT pg_size_pretty(pg_database_size('some_database_name'));

```

## Table

```
-- Show DB table space in use
SELECT pg_size_pretty(pg_total_relation_size('table_name'));

-- Print total column size, average size and percentage occupancy in a table
select
    sum(pg_column_size(json)) as total_size,
    avg(pg_column_size(json)) as average_size,
    sum(pg_column_size(json)) * 100.0 / pg_relation_size('table_name') as percentage
from table_name;

-- (Pretty) Print total column size, average size and percentage occupancy in a table
select
    pg_size_pretty(sum(pg_column_size(json))) as total_size,
    pg_size_pretty(avg(pg_column_size(json))) as average_size,
    sum(pg_column_size(json)) * 100.0 / pg_relation_size('table_name') as percentage
from table_name;

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

## Indexes

```
-- Show table indexes
SELECT * FROM pg_indexes WHERE tablename='table_name' AND schemaname='schema_name';

-- Get all indexes from all tables of a schema
SELECT
   t.relname AS table_name,
   i.relname AS index_name,
   a.attname AS column_name
    FROM
       pg_class t,
       pg_class i,
       pg_index ix,
       pg_attribute a,
       pg_namespace n
    WHERE
       t.oid = ix.indrelid
       AND i.oid = ix.indexrelid
       AND a.attrelid = t.oid
       AND a.attnum = ANY(ix.indkey)
       AND t.relnamespace = n.oid
--         AND n.nspname = 'some_name'
    ORDER BY
       t.relname,
       i.relname;
```

## View Elements

```
-- Show table indexes
SELECT * FROM pg_indexes WHERE tablename='table_name' AND schemaname='schema_name';

-- List all procedures
SELECT * FROM pg_proc;

-- List view (including the definition)
SELECT * FROM pg_views;

-- List extensions enabled
SELECT * FROM pg_extension;

-- List available extensions
SELECT * FROM pg_available_extension_versions;
```

## Configuration

```
-- Show current user's statement timeout
show statement_timeout;
```
