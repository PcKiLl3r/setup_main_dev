#!/usr/bin/env bash

# Run Ansible playbook or any other setup tasks
ls

# Clone the repository
git clone https://github.com/PcKiLl3r/setup_main_dev ./private

cd private/setup_main_dev/fedora

ls

ansible-playbook ./playbooks/main.yml
