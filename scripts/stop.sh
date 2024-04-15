#!/usr/bin/env bash

echo "#Stopping the container..."
#service docker start
if [ "$(docker ps -q -a --filter ancestor=groom-test-docker | wc -l)" -gt 0 ]; then
  docker stop groom-test-docker
  docker rm groom-test-docker
fi