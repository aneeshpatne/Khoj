from opensearchpy import OpenSearch

client = OpenSearch(
  hosts=[{"host": "localhost", "port": 9200}],
  use_ssl=False,
  verify_certs=False
)

mapping = {
    "mappings": {
        "properties": {
            "id": {"type": "integer"},
            "name": {"type": "text"},
            "description": {"type": "text"},
            "price_cents": {"type": "integer"},
            "in_stock": {"type": "boolean"}
        }
    }
}

client.indices.create(index="products", body=mapping) 

print(client.info())