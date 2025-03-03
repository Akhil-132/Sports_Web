#!/bin/bash
set -e

echo "Stopping Apache server..."
sudo systemctl stop httpd || echo "Apache is not running."
