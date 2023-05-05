# CRUD Operations

```sh
# Creates collection myCollection and inserts data
> db.myCollection.insertOne( { x: 1 } );

# List data from collection
> db.getCollection("myCollection")

# same as db.myCollection.find()
> db.getCollection("myCollection").find()
```

## References

* [MongoDB Cheat sheet](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/) | MongoDB
