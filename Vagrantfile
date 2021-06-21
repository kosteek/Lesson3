# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 8088, host: 8088
  config.vm.synced_folder "app/", "/home/vagrant/app"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Docker_lesson3"
    vb.memory = "1024"
    vb.cpus = 1
    vb.gui = false
  end
  config.vm.provision "shell", path: "scripts/init.sh"
end
