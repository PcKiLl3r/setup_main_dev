#!/usr/bin/env bash

# Build the Docker image
docker buildx build --tag fedora-setup --file Dockerfile .

# Run the Docker container
docker run -d --name fedora-test-container fedora-setup

# Simulate the steps to setup a new machine inside the container
docker exec -it fedora-test-container bash -c "mkdir /personal && cd /personal && curl https://raw.githubusercontent.com/PcKiLl3r/setup_main_dev/main/fedora/run.sh | bash /dev/stdin /personal/setup_main_dev/fedora"

# Optional: Attach to the container for interactive debugging
docker exec -it fedora-test-container bash

