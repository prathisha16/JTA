#!/bin/bash
set -eux

apt-get update -y
apt-get install -y ansible-core git unzip

ansible --version > /home/ubuntu/ansible_version.txt
echo "Ansible Installed Successfully" > /home/ubuntu/setup_complete.txt
