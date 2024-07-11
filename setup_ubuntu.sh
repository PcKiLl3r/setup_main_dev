#!/usr/bin/env bash

# Run Ansible playbook or any other setup tasks
cd "$1"
ansible-playbook playbooks/main.yml
