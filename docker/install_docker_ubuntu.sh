#!/bin/bash
#
# Purpose : Install and configure Docker on Ubuntu
# Author  : Srinivas Edugutta
# Version : 1.0
# Date    : 2025-11-20
#

set -e  # Exit immediately if any command fails

echo "--------------------------------------------------"
echo " Docker Installation Script for Ubuntu - Starting "
echo "--------------------------------------------------"

# Update package index
echo "[1/7] Updating package list..."
sudo apt update -y

# Install required packages
echo "[2/7] Installing prerequisites..."
sudo apt install -y ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
echo "[3/7] Adding Docker GPG key..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up Docker repository
echo "[4/7] Setting up Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list again
echo "[5/7] Updating package list again..."
sudo apt update -y

# Install Docker Engine
echo "[6/7] Installing Docker Engine..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add user to docker group
echo "[7/7] Adding user to Docker group..."
sudo usermod -aG docker $USER

echo "--------------------------------------------------"
echo " Docker installation completed successfully!"
echo "--------------------------------------------------"
echo "NOTE: Log out and log back in for group changes to apply."
echo "To verify Docker installation, run:"
echo "  docker --version"
echo "  docker info"