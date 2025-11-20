#!/bin/bash

# Update packages
sudo yum update -y

# Install Docker
sudo yum install -y docker

# Start Docker service
sudo service docker start

# Add ec2-user to Docker group
sudo usermod -aG docker ec2-user

# Enable Docker to start on boot
sudo systemctl enable docker

echo "Docker installation completed!"
echo "You can verify the installation by running 'docker --version'."