#!/usr/bin/env bash

# Update the apt-get cache
sudo apt-get update

# Install PHP
sudo apt-get install -y php

# Install Apache
sudo apt-get install -y httpd

# Copy the code from repository
git clone git@github.com:acme/my-app.git /var/www/html/

# Start Apache
sudo service httpd start
