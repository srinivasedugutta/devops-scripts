#!/bin/bash
# Author: Srinivas
# Script: create-user.sh
# Purpose: Create a Linux user with a home directory

USER="$1"

if [[ -z "$USER" ]]; then
  echo "Usage: $0 <username>"
  exit 1
fi

if id "$USER" &>/dev/null; then
  echo "User  already exists."
else
  sudo useradd -m "$USER"
  echo "User  created successfully."
fi

