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
