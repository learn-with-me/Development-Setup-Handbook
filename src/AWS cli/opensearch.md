# OpenSearch

## Common Commands

```sh
# Create domain
aws --endpoint-url=http://localhost:4566 opensearch create-domain --domain-name search

# Describe domain
aws --endpoint-url=http://localhost:4566 opensearch describe-domain --domain-name search
```

## Specific cases

### Remove read-only block

This command will remove the `read_only_allow_delete` block from all indices. If you want to remove the block from a specific index, replace `_all` with the name of the index.

```sh
curl -X PUT "localhost:9200/_all/_settings" -H 'Content-Type: application/json' -d'
{
  "index.blocks.read_only_allow_delete": null
}'
```
