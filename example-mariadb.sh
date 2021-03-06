#!/bin/bash

NAME="example-mariadb"
MYPW="mysecretpassword"

# Runs mariadb server.
docker run \
  --name $NAME \
  -e MYSQL_ROOT_PASSWORD=$MYPW \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=mypassword \
  -e MYSQL_DATABASE=mydb \
  -d \
  -p 3306:3306 \
  mariadb:5.5

# After starting the daemon, show the recent logs.
docker logs $NAME

echo "(i)    Connect to maraidb via "$(boot2docker ip)":3306"
echo "(i)    'docker logs $NAME' to show the recent output of the server."
echo "(i)    'docker stop $NAME' to stop the container."
echo "(i)    'docker rm $NAME' to remove the container."
