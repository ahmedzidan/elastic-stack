## Run multiple data nodes using the following command
```
NODE_NUMBER=01 docker-compose -p data-node-01 -f data-node.yml up
```
- where ``NODE_NUMBER`` is a variable and it depend on the number that you want to put.
- ``-p data-node-01:`` is the prefix of the project and it should be unique.
## Run multiple master nodes using the following command.
```
NODE_NUMBER=01 docker-compose -p master-node-01 -f master-node.yml up
```

Read more about the details of configuration and installation from https://www.dailytask.co/task/install-and-configure-elasticsearch-using-docker-ahmed-zidan

- ELASTIC_PASSWORD="test"
      - xpack.security.enabled=true
      - xpack.security.transport.ssl.enabled=true

curl -u elastic --cacert ./certs/ca/ca.crt https://localhost:9200/_cat/nodes/?v
      - "SERVER_NAME=kibana"
      - "ELASTICSEARCH_HOSTS=https://localhost:9200"
      - "elasticsearch.username=elastic"
      - "ELASTICSEARCH_PASSWORD=test"
      - "XPACK_SECURITY_ENABLED=true"
      - "ELASTICSEARCH_SSL_CERTIFICATEAUTHORITIES=$CERTS_DIR/ca/ca.crt"
      - "ELASTICSEARCH_SSL_VERIFICATIONMODE=none"
      - XPACK_SECURITY_ENCRYPTIONKEY="12345678901234567890123456789012"


docker-compose -f create-certs.yml run --rm create_certs

