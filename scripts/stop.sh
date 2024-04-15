#!/usr/bin/env bash

echo "#Stopping the container..."
#service docker start
if [ "$(docker ps -q --filter ancestor=groom-test-docker | wc -l)" -gt 0 ]; then
    docker stop groom-test-docker
fi