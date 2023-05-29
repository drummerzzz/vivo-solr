#!/bin/bash

SOLR_PORT="8983"


if ! command -v lsof &> /dev/null; then
    echo "lsof not found. Installing lsof..."
    apt-get update
    apt-get install -y lsof
fi

./bin/solr start -p $SOLR_PORT

while ! lsof -i :$SOLR_PORT | grep LISTEN; do
    sleep 1
done


# Cria o núcleo (core) "vivocore"
./bin/solr create_core -c vivocore -d ./vivocore/

# Outras operações, se necessário
# ...

# Encerra o servidor Solr
./bin/solr stop
