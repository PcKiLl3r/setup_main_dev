#!/usr/bin/env bash

docker build -t fedora-setup -f Dockerfile.fedora .
docker run -it fedora-setup
