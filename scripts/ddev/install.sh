#!/bin/bash

# Ask for a project name and change Lando, DDEV and Composer configuration

# Start lando
echo "Starting Application..."
ddev start

# Run composer install using Lando
echo "Installing Packages..."
ddev composer install

# Install Drupal site using Lando Drush
echo "Installing Drupal..."
ddev drush site:install --db-url=mysql://drupal10:drupal10@database/drupal10 --account-name=admin --account-pass=admin -y

# Start Lando
echo "Starting Drupal..."
ddev start
echo "Username: admin - Password: admin"
