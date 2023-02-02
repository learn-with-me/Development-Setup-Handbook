# MongoDB Cheatsheet

## mongo shell

```
> db                    # Displays the database you are using
> help                  # Displays all the commands available
> show dbs              # List available databases
> use <database>        # Switch database. This creates a new DB if it does not exist

Creates collection myCollection and inserts data
> db.myCollection.insertOne( { x: 1 } );

Other Commands
> db.getCollection("myCollection")
> db.getCollection("myCollection").find()        # same as db.myCollection.find()
> quit()                                         # Exit the shell
```

