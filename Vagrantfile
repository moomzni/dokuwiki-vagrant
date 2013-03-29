# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # This vagrant file will create a local vm with all the ertp application deps installed in 
  # a reasonably production-like manner.

  # All Vagrant configuration is done here. The most common configuration
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.customize ["modifyvm", :id, "--memory", 512]
  config.vm.provision :shell, :path => "vagrant.sh"

  config.vm.forward_port 80, 1080
end
