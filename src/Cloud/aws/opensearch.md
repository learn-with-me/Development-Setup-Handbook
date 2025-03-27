# OpenSearch

## Common Commands

```sh
# Create domain
aws --endpoint-url=http://localhost:4566 opensearch create-domain --domain-name <domain_name>
# Domain will be available at http://localhost:9200/_<domain_name> in browser

# Describe domain
aws --endpoint-url=http://localhost:4566 opensearch describe-domain --domain-name <domain_name>

# Describe domain and check specific value (status if cluster)
aws --endpoint-url=http://localhost:4566 opensearch describe-domain --domain-name <domain_name> | jq ".DomainStatus.Processing"

# Check cluster health and verify it's up and running
curl http://localhost:9200/_cluster/health | jq .

# Create an index
curl -X PUT localhost:9200/<index_name>
curl -X PUT localhost:9200/new-domain
# Index will be available at the same url
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
