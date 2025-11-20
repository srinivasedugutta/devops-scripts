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
echo "[1/5] Updating system packages..."
sudo yum update -y

# Install Docker
echo "[2/5] Installing Docker..."
sudo yum install -y docker

# Start Docker service
echo "[3/5] Starting Docker service..."
sudo systemctl start docker

# Enable Docker to start on boot
echo "[4/5] Enabling Docker to start on boot..."
sudo systemctl enable docker

# Add ec2-user to Docker group
echo "[5/5] Adding ec2-user to Docker group..."
sudo usermod -aG docker ec2-user

echo "----------------------------------------"
echo " Docker installation completed successfully!"
echo "----------------------------------------"
echo "NOTE: Log out and log back in for group changes to apply."
echo "To verify Docker installation, run:"
echo "  docker --version"
echo "  docker info"
