# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "lucid64"

  config.vm.box_url = "http://files.vagrantup.com/lucid64.box"
 
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose = "vvvv"
  end
 
  config.vm.provider :virtualbox do |vb|
    vb.gui = false 
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    config.vm.network :forwarded_port, guest: 3000, host: 3000
  end

end
