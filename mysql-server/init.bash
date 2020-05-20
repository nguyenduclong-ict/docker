#!/bin/bash
CONTAINER_NAME=${1-mysql-server}
DATA_DIR=~/.data/mysql
PASSWORD=long97
# Stop container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
# Create new contanier
docker run \
    --name=$CONTAINER_NAME \
    -e MYSQL_ROOT_HOST=% \
    -e MYSQL_ROOT_PASSWORD=$PASSWORD \
    -v $DATA_DIR:/var/lib/mysql \
    --network=database \
    -p 3306:3306 \
    --restart always \
    -d mysql/mysql-server

./start.bash
