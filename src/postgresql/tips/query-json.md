# Query Json

```sql
-- Extracting an attribute
SELECT preferences->'key_name' FROM user_preferences;

-- Extracting an attribute as text*
SELECT preferences->>'key_name' FROM user_preferences;

-- Some key holds some value
SELECT * FROM user_preferences
    WHERE preferences->'key_name' ? 'value';

-- Extracting First element of an array in json field
SELECT preferences::json->0 FROM user_preferences;

SELECT preferences::json->'key_name' FROM user_preferences;
SELECT * FROM user_preferences
    WHERE preferences->>'key_name' = 'value';
```
