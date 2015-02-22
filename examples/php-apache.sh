#!/bin/bash

# Run a php script once
docker run \
  -it \
  --rm \
  -p 80:80 \
  -v $PWD:/var/www \
  -v $PWD/config/php:/usr/local/etc/php \
  php:5.6-apache
