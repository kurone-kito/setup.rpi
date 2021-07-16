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
    prl.customize [
      "set", :id,
      "--device-set", "cdrom0",
      "--image", "/Applications/Parallels Desktop.app/Contents/Resources/Tools/prl-tools-lin-arm.iso",
      "--connect"
    ]
    prl.customize ["set", :id, "--auto-share-bluetooth", "on"]
    prl.customize ["set", :id, "--adaptive-hypervisor", "on"]
  end
end
