#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y rabbitmq-server

# RabbitMQ Plugins
service rabbitmq-server stop
rabbitmq-plugins enable rabbitmq_management
rabbitmq-plugins enable rabbitmq_jsonrpc
service rabbitmq-server start
