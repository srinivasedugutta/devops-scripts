#!/bin/bash
#
# Purpose : Install and configure Docker on Amazon Linux
# Author  : Srinivas Edugutta
# Version : 1.0
# Date    : 2025-11-20
#

set -e  # Exit immediately on error

echo "----------------------------------------"
echo " Docker Installation Script - Starting..."
echo "----------------------------------------"

# Update packages
echo "[1/4] Updating system packages..."
sudo yum update -y

# Install Docker
echo "[2/4] Installing Docker..."
sudo yum install -y docker

# Start Docker service
echo "[3/4] Starting Docker service..."
sudo service docker start

# Add ec2-user to Docker group
echo "[4/4] Adding ec2-user to Docker group..."
sudo sudo usermod -a -G docker ec2-user

echo "----------------------------------------"
echo " Docker installation completed successfully!"
echo "----------------------------------------"
echo "NOTE: Log out and log back in for group changes to apply."
echo "To verify Docker installation, run:"
echo "  docker --version"
echo "  docker info"
