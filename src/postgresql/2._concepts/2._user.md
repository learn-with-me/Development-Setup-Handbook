# Postgres Database User

## Creating a new user

```sh
> CREATE ROLE admin WITH LOGIN PASSWORD 'admin'
> ALTER ROLE admin CREATEDB
OR
> createuser admin --createdb
```

## References

* [Create Role](https://www.postgresql.org/docs/9.5/static/sql-createrole.html) | Official docs
* [Alter Role](https://www.postgresql.org/docs/9.5/static/sql-alterrole.html) | Official docs
