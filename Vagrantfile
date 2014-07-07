# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$yum_install_script = <<SCRIPT
  sh /vagrant/script/setup.sh
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"
  config.vm.define :web1 do |web|
    web.vm.network :private_network, ip: "192.168.56.101"
    web.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :web2 do |web|
    web.vm.network :private_network, ip: "192.168.56.102"
    web.vm.provision :shell, :path => "script/setup.sh"
  end
end
