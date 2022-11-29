# Splunk

1. [Browse Data Sources](./browse-datasources.md)

## Common Queries

List Specific Values

```shell
<query> | stats values(<key>)
<query> | table <key>
<query> | stats count by <key>
```

Data for timechart

```shell
<query> | timechart span=1m count by <key>
```
