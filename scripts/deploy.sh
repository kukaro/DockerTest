#!/usr/bin/env bash

echo "#Starting the container..."
pwd
docker load < groom-test-docker.tar
tar -xvf groom-test-docker.tar
docker images
docker run -d -p 80:80 --name groom-test-docker groom-test-docker