# Code

Assuming installation is already done, breaking down tasks into smaller sections

* Setup local DB service up and running
* Setup DB connection in the code
* Ability to import data
* Ability to create/update/delete

##### Setup local DB service

```
Make sure the service is up and running, however the way it was installed on the machine

If you have to create a DB, which you should for your new application
$ initdb <db_directory> -E utf8
$ initdb /usr/local/var/postgres -E utf8

Ideally we shouldn't need this step, since creating DB should be part of automation.
```

##### Node.js

```
Packages required
=================
pg            # Postgres Client for Node
pg-format     # Allows us to safely make dynamic SQL queries
express       # Create a quick and basic server. Doesn't have to via Express though

Environment Variables (https://www.postgresql.org/docs/9.1/static/libpq-envars.html)
=====================
PGHOST='localhost'
PGUSER=process.env.USER
PGDATABASE=process.env.USER
PGPASSWORD=null
PGPORT=5432

Code
====
const { Pool, Client } = require('pg')

// pools will use environment variables
// for connection information
const pool = new Pool()

pool.query('SELECT NOW()', (err, res) => {
  console.log(err, res)
  pool.end()
})

// you can also use async/await
const res = await pool.query('SELECT NOW()')
await pool.end()

// clients will also use environment variables
// for connection information
const client = new Client()
await client.connect()

const res = await client.query('SELECT NOW()')
await client.end()

```

##### Resources

```
https://www.packtpub.com/books/content/how-setup-postgresql-nodejs
https://node-postgres.com/
```



