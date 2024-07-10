#!/usr/bin/env bash
apt update -y
apt install software-properties-common -y
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y
apt install git -y
git clone https://github.com/PcKiLl3r/setup_main_dev $1
