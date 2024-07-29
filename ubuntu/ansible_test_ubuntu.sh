#!/usr/bin/env bash

# Build the Docker image
docker buildx build --tag ubuntu-setup-ansible --file Dockerfile.ubuntu_with_deps .

# Run the Docker container
docker run -d --name ubuntu-test-container ubuntu-setup-ansible

# Simulate the steps to setup a new machine inside the container
docker exec -i ubuntu-test-container bash < setup_ubuntu.sh
# Optional: Attach to the container for interactive debugging
# docker exec -it ubuntu-test-container bash

docker stop ubuntu-test-container

docker rm ubuntu-test-container

