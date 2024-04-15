#!/usr/bin/env bash

echo "#Starting the container..."
docker load < groom-test-docker.tar
tar -xvf groom-test-docker.tar
docker run -d -p 80:80 --name groom-test-docker groom-test-docker