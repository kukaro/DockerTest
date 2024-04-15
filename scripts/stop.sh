#!/usr/bin/env bash

sudo su
echo "#Stopping the container..."
service docker start
docker stop groom-test-docker