#!/usr/bin/env bash

docker buildx build --tag ubuntu-setup --file Dockerfile.ubuntu .

docker run -it ubuntu-setup
