# Postgres Database

## Create a new Database

```sql
postgres=#  CREATE DATABASE database_name;
OR
> createdb database_name -U admin
```

## Database permissions

Once a database is created, you need to add at least one user who has permission to access the database (aside from the super users, who can access everything).

```sql
> GRANT ALL PRIVILEGES ON DATABASE database_name TO <user>;
> GRANT ALL PRIVILEGES ON DATABASE database_name TO admin;

-- Lists all the databases in Postgres
> \list

-- Connect to a specific database
> \connect <database_name>

-- List the tables in the currently connected database
> \dt
```

## Rename a database

```sql
> ALTER DATABASE database_name RENAME TO awesome_application;
```
