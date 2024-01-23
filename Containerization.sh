#!/bin/bash

# Task 1
docker pull nginx:1.23.3
docker run -d -p 8080:80 --name nginx_container nginx:1.23.3

# Task 2
docker build -t nginx:custom .
docker run -d -p 8081:80 --name nginx_custom_container nginx:custom

# Task 3
docker-compose up -d

# Task 4
# Configure Nginx Load Balancer (config file already created)

# Initialize Git repository
git init

# Set Git user identity
git config --global user.email "feramin108@gmail.com"
git config --global user.name "feramin108"

# Check if a remote named 'origin' exists
if git remote | grep -q 'origin'; then
  # Remote 'origin' already exists, update the branch name
  git branch -M main
else
  # Remote 'origin' does not exist, add the remote
  git remote add origin https://github.com/feramin108/containers.git
fi

# Commit and push to GitHub
git add .
git commit -m "Initial commit"
git push -u origin main
