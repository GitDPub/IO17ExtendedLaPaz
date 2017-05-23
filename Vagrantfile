# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.hostname = "googleio"
  config.vm.box_check_update = true

  config.vm.network "private_network", ip: "192.168.100.100"
  config.vm.network "forwarded_port", guest: 8000, host: 8000  # Django

  config.vm.synced_folder "./", "/code", disabled: false


  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "1024"
     vb.name = "googleio"
  end

end
