#!/bin/bash

# Quit if some error occurs.
set -e

echo "(i)    You have to install boot2docker first.";
echo "(i)    Read install instructions for Max OS X.";
open http://docs.docker.com/installation/mac/

boot2docker version

boot2docker start
$(boot2docker shellinit)

# Pull some images
docker pull php:5.6-cli
docker pull php:5.6-apache

echo ""
echo "(/)    Preparation succesful."
