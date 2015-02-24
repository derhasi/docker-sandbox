#!/bin/bash

docker build -t my-php-apache ./lamp

WEB_NAME="example-lamp-web"
DB_NAME="example-lamp-db"

# Runs mariadb server.
docker run \
  --name $DB_NAME \
  -e MYSQL_ROOT_PASSWORD=rootpw \
  -e MYSQL_USER=me \
  -e MYSQL_PASSWORD=mypw \
  -e MYSQL_DATABASE=mydb \
  -d \
  mariadb:5.5

# Run apache and php as a daemon.
docker run \
  -it \
  -d \
  --name="$WEB_NAME" \
  -p 80:80 \
  -v $PWD/lamp:/var/www \
  -v $PWD/lamp/config-php:/usr/local/etc/php \
  --link "$DB_NAME":db \
  my-php-apache

# We open our new instance in the browser.
open http://$(boot2docker ip)

# After starting the daemon, show the recent logs.
docker logs $WEB_NAME

echo "(i)    Navigate to http://"$(boot2docker ip)
echo "(i)    'docker logs $NAME' to show the reoutput of the server."
echo "(i)    'docker stop $NAME' to stop the container."
echo "(i)    'docker rm $NAME' to remove the container."
