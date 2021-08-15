#!/bin/sh
# vim: set ft=sh :

set -eu

# Auto login
cd /etc/gdm3
sed -i.bak -e 's/# \+AutomaticLoginEnable = true/AutomaticLoginEnable = true/g' custom.conf
sed -i.bak -e "s/# \+AutomaticLogin = user1/AutomaticLogin = ${1}/g" custom.conf

# Limit upgrade notifications to LTS only
cd /etc/update-manager
sed -i.bak -e 's/Prompt=normal/Prompt=lts/g' release-upgrades

# Change the locale
timedatectl set-timezone Asia/Tokyo
dpkg-reconfigure --frontend noninteractive tzdata
update-locale LANG=ja_JP.UTF-8
