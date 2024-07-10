#!/usr/bin/env bash

docker build -t ubuntu-setup -f Dockerfile.ubuntu .
docker run -it ubuntu-setup
