# Schema

A `schema` is a namespace or a named collection of tables, views, functions, constraints, indexes, sequences etc.

PostgreSQL supports having multiple schemas in a single database there by letting you namespace different features into different schemas.

Fundamentally, schemas let users namespace their various application features, especially third-party stuff to have their own space and not interfere with the primary data source.

Especially with role based access, it's easier to restrict access to schemas.

By default, the `public` schema is used in PostgreSQL when you set it up for the first time. Any SQL queries executed will run against the `public` schema by default unless explicitly mentioned.

## Managing Schema

### List available Schemas

```sql
postgres=# SELECT schema_name FROM information_schema.schemata;

postgres=# SELECT nspname FROM pg_catalog.pg_namespace;

postgres=# \dn
```

### Creating Schema

```sql
CREATE SCHEMA <schema_name>;

postgres=# CREATE SCHEMA ecommerce;
```

### Dropping Schema

```sql
DROP SCHEMA <schema_name>;

-- to cascade delete all referenced objects
DROP SCHEMA <schema_name> CASCADE;
```

## Information Schema

The `information_schema` consists of a set of views that contain information about the objects defined in the current database. This schema automatically exists in all databases. The information schema views do not, however, contain information about PostgreSQL-specific features; to inquire about those you need to query the system catalogs or other PostgreSQL-specific views.

## References

* [Information Schema](https://www.postgresql.org/docs/current/information-schema.html) | Official documentation
