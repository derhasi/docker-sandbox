#!/bin/bash

# Run a php script once
docker run \
  -it \
  --rm \
  -p 80:80 \
  -v $PWD:/var/www \
  php:5.6-apache
