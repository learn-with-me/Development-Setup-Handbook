# Troubleshooting

```
-- Get all queries from all DBs
SELECT * FROM pg_stat_activity;
-- TODO: Get all queries from all DBs, waiting for data
-- SELECT * FROM pg_stat_activity WHERE waiting='t';

-- Kill all Connections:
SELECT pg_terminate_backend(pg_stat_activity.pid)
    FROM pg_stat_activity
    WHERE datname = current_database() AND pid <> pg_backend_pid();

-- Currently running queries with process pid:
SELECT
  pg_stat_get_backend_pid(s.backendid) AS procpid,
  pg_stat_get_backend_activity(s.backendid) AS current_query
FROM (SELECT pg_stat_get_backend_idset() AS backendid) AS s;

-- Get Connections by Database
SELECT datname, numbackends FROM pg_stat_database;

-- Check permissions in a table:
SELECT grantee, privilege_type
    FROM information_schema.role_table_grants
    WHERE table_name='name-of-the-table';

-- Kill all Connections:
SELECT pg_terminate_backend(pg_stat_activity.pid)
    FROM pg_stat_activity
    WHERE datname = current_database() AND pid <> pg_backend_pid();
```
