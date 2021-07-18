# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = ["vagrant-parallels", "vagrant-reload"]
  config.vm.box = "simplyswimaustralia/parallels_m1_ubuntu20.10"
  config.vm.provider "parallels" do |prl|
    prl.cpus = 4
    prl.linked_clone = true
    prl.memory = 4096
    prl.name = "setup.rpi"
    prl.update_guest_tools = true
    prl.customize [
      "set", :id,
      "--device-set", "cdrom0",
      "--image", "/Applications/Parallels Desktop.app/Contents/Resources/Tools/prl-tools-lin-arm.iso",
      "--connect"
    ]
    prl.customize ["set", :id, "--auto-share-bluetooth", "on"]
    prl.customize ["set", :id, "--adaptive-hypervisor", "on"]
  end
  config.vm.provision "shell", inline: "/vagrant/.setup/apt-upgrade.sh"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "/vagrant/.setup/apt-dist-upgrade.sh"
  config.vm.provision "shell", inline: "/vagrant/.setup/parallels.sh"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "/vagrant/.setup/pre-migrate-ubuntu.sh"
  config.vm.provision :reload
  # config.vm.provision "shell", inline: "/vagrant/.setup/migrate-ubuntu.sh" # Not working the parallels guest tools on Ubuntu 21.04
  # config.vm.provision "shell", inline: "/vagrant/.setup/parallels.sh"
  # config.vm.provision :reload
  # config.vm.provision "shell", inline: "/vagrant/.setup/migrate-ubuntu.sh -d"
  # config.vm.provision "shell", inline: "/vagrant/.setup/parallels.sh"
  # config.vm.provision :reload
end
