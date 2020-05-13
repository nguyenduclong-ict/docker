#!/bin/bash
# Variable
CONTAINER_NAME=mongodb-server
DATA_DIR=~/.data/mongodb
USER=root
PASSWORD=long97

# Stop container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
# Create new contanier
docker run \
    --name=$CONTAINER_NAME \
    -e MONGO_INITDB_ROOT_USERNAME=$USER \
    -e MONGO_INITDB_ROOT_PASSWORD=$PASSWORD \
    -v $DATA_DIR:/data/db \
    --network=database \
    -p 27017:27017 \
    --restart always \
    -d mongo

./start.bash
