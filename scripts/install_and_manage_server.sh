#!/bin/bash
set -e  # Exit on any error

echo "Updating system and installing dependencies..."
sudo yum update -y
sudo yum install -y httpd  # Install Apache if not installed

echo "Checking Apache server status..."
if sudo systemctl is-active --quiet httpd; then
    echo "Apache is already running. Restarting now..."
    sudo systemctl restart httpd
else
    echo "Starting Apache server..."
    sudo systemctl start httpd
fi

echo "Enabling Apache to start on boot..."
sudo systemctl enable httpd

