#!/bin/bash

# Run a php script once
docker run \
  -it \
  --rm \
  -v $PWD:/usr/src/sandbox \
  php:5.6-cli \
  php /usr/src/sandbox/src/hello-world.php
