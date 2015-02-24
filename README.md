# docker sandbox

## Preparation

You should install boot2docker and docker first. See or run `./000_prepare.sh`
for details.

## Examples

In the root there are several examples located, each starting with `example-`.
Simply run the command, like `./example-php-cli.sh`.

## Commands

Some helpful commands when dealing with docker.

* Stop all running containers: `docker stop $(docker ps -aq)`
* Remove all installed containers: `docker rm $(docker ps -aq)`
