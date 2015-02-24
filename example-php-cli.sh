#!/bin/bash

# Run a php script once
docker run \
  -it \
  --rm \
  -v $PWD/php-cli:/usr/src/php-cli \
  php:5.6-cli \
  php /usr/src/php-cli/hello-world.php
