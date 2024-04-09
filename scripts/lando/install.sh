#!/bin/bash

# Ask for a project name and change Lando, DDEV and Composer configuration

# Start lando
echo "Starting Application..."
lando start

# Run composer install using Lando
echo "Installing Packages..."
lando composer install

# Install Drupal site using Lando Drush
echo "Installing Drupal..."
lando drush site:install --db-url=mysql://drupal10:drupal10@database/drupal10 --account-name=admin --account-pass=admin -y

# Start Lando
echo "Starting Drupal..."
lando start
echo "Username: admin - Password: admin"
