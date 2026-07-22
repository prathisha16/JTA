#!/bin/bash
apt-get update -y
apt-get install -y ansible git unzip

echo "Ansible Installed Successfully" > /home/ubuntu/setup_complete.txt
