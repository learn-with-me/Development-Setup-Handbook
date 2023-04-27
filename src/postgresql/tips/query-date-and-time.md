# Using date and time

## Data types

* Date - Date only (2012-04-25)
* Time - Time only (13:00:00.00)
* Timestamp - Date and Time (2012-04-25 13:00:00.00)
* Time with Timezone - Time only (13:00:00.00 EST)
* Timestamp with Timezone (2012-04-25 13:00:00.00 EST)
* Interval - A span of time (4 days)

> Note: All timezone-aware dates and times are saved internally in UTC. PostgreSQL stores the timestamp in UTC value.

### Print date/time

```sql
-- Prints current timestamp with timezone
SELECT now();

-- Prints current timestamp without timezone
SELECT NOW()::timestamp;

-- Prints current date
SELECT NOW()::date;

-- Prints current time
SELECT NOW()::time;

-- Prints current timestamp in selected timezone
SELECT now() AT TIME ZONE 'EST';
SELECT now() AT TIME ZONE 'UTC';
```

## Tips

### Truncating timestamps

```sql
SELECT count(*), date_trunc('day', created_at)
    FROM users
    GROUP BY 2
    ORDER BY 2 DESC;
```

### Intervals

```sql
SELECT count(*)
    FROM users
    WHERE created_at >= (now() - '1 day'::INTERVAL);

SELECT count(*)
    FROM users
    WHERE created_at >= (now() - interval '1 month');

-- Converting interval to string
SELECT
    to_char(
        INTERVAL '12h 35m 24s',
        'HH24:MI:SS'
    );

SELECT
    to_char(
        INTERVAL '20h 42m 48s',
        'HH12:MI:SS'
    );
```

## References

- https://www.postgresguide.com/tips/dates/
- [Date input format](https://www.postgresql.org/docs/9.1/datatype-datetime.html#DATATYPE-DATETIME-DATE-TABLE) | Official doc
- [Time input format](http://www.postgresql.org/docs/9.1/static/datatype-datetime.html#DATATYPE-DATETIME-TIME-TABLE) | Official doc
- [Timezone input format](http://www.postgresql.org/docs/9.1/static/datatype-datetime.html#DATATYPE-TIMEZONE-TABLE) | Official doc
