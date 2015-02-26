#!/bin/bash

set -e

echo "Make sure docker-compose is isntalled. See https://github.com/docker/compose/releases"

cd ./lamp

# Create and run containers as defined in docker-compose.yml.
docker-compose up -d

# We open our new instance in the browser.
open http://$(boot2docker ip)

echo "(i)    Navigate to http://"$(boot2docker ip)
echo "(i)    Run 'docker-compose logs' in ./lamp to show the reoutput of the server."
echo "(i)    Run 'docker-compose kill' in ./lamp to stop the containers."
echo "(i)    Run 'docker-compose rm' in ./lamp to remove the containers."
