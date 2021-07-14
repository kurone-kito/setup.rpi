# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = "vagrant-parallels"
  config.vm.box = "simplyswimaustralia/parallels_m1_ubuntu20.10"
  config.vm.provider "parallels" do |prl|
    prl.cpus = 4
    prl.linked_clone = true
    prl.memory = 4096
    prl.name = "setup.rpi"
    prl.update_guest_tools = true
  end
end
