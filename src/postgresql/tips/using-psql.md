# Using psql

Psql is the interactive terminal for working with Postgres.

## Commands

### Login to postgres server

```sh
# Login to psql command line
$ psql -h <host> -d <database> -U <user> -p <port>
$ psql -h 127.0.0.1 -d postgres -U postgres -p 5432

# Login to psql command line, with defaults other than username
$ psql postgres -U <username>

# Login using connection string
$ psql postgresql://username:password@host:port/dbname
```

Running the parameterized command prompts you to enter the password. If the connection is successful, you should see something like this:

```sh
psql (14.7)
Type "help" for help.

postgres=#
```

Connecting in SSL mode

```sh
$ psql "sslmode=require host=<host> dbname=<database> user=<user>"
```

If the command runs successfully, you should see a similar output in your terminal:

```sh
psql (14.7)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=#
```

It's important to mention that the Postgres server should support SSL to use the SSL mode.

### Context

```sql
-- Connect to another database
# \c dbname

-- Quit from postgres shell
# \q

-- Text editor inside psql
# \e

-- Displays a list of users installed by running a query internally
# \du
```

### Table

```sql
-- List tables in database
# \d
# \dt

-- List all tables in database along with size
# \d+

-- Describe a table
# \d <table_name>
# \d users

-- Describe a table with constraints
#\d+ users
```

### Schema

```sql
-- List all databases
# \l
# \list

-- List all databases with additional information
# \l+

-- List all schemas
# \dn

-- List all schemas with permissions
# \dn+

-- List all functions with additional information
#\df+

-- Lists all functions that contain to_array in its name
\df *to_array*
```

### Configurations

```sql
-- Timing is on.
# \timing

-- Setting password. It'll ask you to enter the password
# \password <role>
# \password postgres
```

## References

- [Psql](https://www.postgresguide.com/utilities/psql/) | Postgres Guide
