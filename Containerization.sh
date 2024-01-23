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

#