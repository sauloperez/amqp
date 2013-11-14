#!/usr/bin/env bash

# Update and install the required packages
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y rabbitmq-server

# Make rabbitmq commands globally available
echo '\n# Add RabbitMQ commands to the PATH variable' >> /home/vagrant/.bashrc
echo 'export PATH="/usr/lib/rabbitmq/bin/:$PATH"' >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

# Enable management plugin
rabbitmq-plugins enable rabbitmq_management

# and start the server
rabbitmq-server
