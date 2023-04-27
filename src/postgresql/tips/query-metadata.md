# Query Metadata

## Indexes

```sql
-- Show table indexes
SELECT * FROM pg_indexes
    WHERE tablename='table_name' AND schemaname='schema_name';

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

```sql
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

```sql
-- Show current user's statement timeout
show statement_timeout;
```
