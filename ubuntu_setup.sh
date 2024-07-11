#!/usr/bin/env bash

# Ensure the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root or use sudo"
    exit 1
fi

# Set non-interactive frontend for apt-get
export DEBIAN_FRONTEND=noninteractive

# Update package list and install necessary packages
apt update -y
apt install -y software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install -y ansible git

# Clone the repository
git clone https://github.com/PcKiLl3r/setup_main_dev "$1"

# Run Ansible playbook or any other setup tasks
cd "$1"
ansible-playbook playbooks/main.yml

