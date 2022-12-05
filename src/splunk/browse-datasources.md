# Browse Splunk Data Sources

It can get overwhelming trying to find where the data is located, if the naming convention is not standard across applications.

Use these queries as is in the Splunk query bar

```sh
# List all available Indexes
| eventcount summarize=false index=* | dedup index | fields index
```

```sh
# List all available Container Names
| tstats values(container_name) where index=xxxx group by index
```

```sh
# List sourcetypes in an index
| tstats values(sourcetype) where index=xxxx group by index
```

```sh
# List sources in an index
| tstats values(source) where index=xxxx group by index
```

```sh
# List namespace in an index
| tstats values(namespace) where index=xxxx group by index
```
