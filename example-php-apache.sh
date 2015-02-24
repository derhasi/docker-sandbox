#!/bin/bash

NAME="example-php-apache"

# Run apache and php as a daemon.
docker run \
  -it \
  -d \
  --name="$NAME" \
  -p 80:80 \
  -v $PWD/php-apache:/var/www \
  -v $PWD/php-apache/config-php:/usr/local/etc/php \
  php:5.6-apache

# We open our new instance in the browser.
open http://$(boot2docker ip)

# After starting the daemon, show the recent logs.
docker logs $NAME

echo "(i)    Navigate to http://"$(boot2docker ip)
echo "(i)    'docker logs $NAME' to show the recent output of the server."
echo "(i)    'docker stop $NAME' to stop the container."
echo "(i)    'docker rm $NAME' to remove the container."
