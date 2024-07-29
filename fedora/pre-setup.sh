#!/usr/bin/env bash

# Ensure the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root or use sudo"
    exit 1
fi

# Update package list and install necessary packages
dnf check-update -y
dnf install -y software-properties-common
dnf install -y ansible git

# Clone the repository
git clone https://github.com/PcKiLl3r/setup_main_dev .
