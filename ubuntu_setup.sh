#!/usr/bin/env bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
sudo apt install git
git clone https://github.com/PcKiLl3r/setup_main_dev $1
