#!/usr/bin/env bash

# Build the Docker image
docker buildx build --tag fedora-setup-ansible --file Dockerfile.with_deps .

# Run the Docker container
docker run -d --name fedora-test-container fedora-setup-ansible

# Simulate the steps to setup a new machine inside the container
docker exec -i fedora-test-container bash < setup.sh
# Optional: Attach to the container for interactive debugging
# docker exec -it ubuntu-test-container bash

docker stop fedora-test-container

docker rm fedora-test-container

