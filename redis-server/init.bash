#!/bin/bash
CONTAINER_NAME=${1-redis-server}
DATA_DIR=~/.data/redis
# Stop container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
# Create new contanier
docker run \
    --name=$CONTAINER_NAME \
    -v $DATA_DIR:/data \
    --network=database \
    -p 6379:6379 \
    --restart always \
    -d redis

./start.bash
