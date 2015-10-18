#!/bin/bash
# Delete stop containers
docker stop $(docker ps -a -q)
# Delete all images
docker rm $(docker ps -a -q)
