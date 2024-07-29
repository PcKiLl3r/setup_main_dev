#!/usr/bin/env bash

cd home

mkdir private

cd private

git clone https://github.com/PcKiLl3r/setup_main_dev ./setup_main_dev

cd setup_main_dev

cd fedora

ansible-playbook ./playbooks/main.yml
