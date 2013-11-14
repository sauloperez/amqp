# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.provision :shell, :path => "provisioning.sh"
  config.vm.hostname = "redch-amqp"

  config.vm.network :private_network, ip: "10.0.0.100"

  # RabbitMQ node port
  config.vm.network :forwarded_port, guest: 5672, host: 5672

  # RabbitMQ management plugin web UI
  config.vm.network :forwarded_port, guest: 15672, host: 15672
end
