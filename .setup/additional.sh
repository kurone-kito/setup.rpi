#!/bin/sh
# vim: set ft=sh :

set -eu

export DEBIAN_FRONTEND=noninteractive

apt-get -y install awscli gawk git jq fonts-ipafont language-pack-ja \
  nodejs npm ntp nyancat openssh-server pulseaudio-module-bluetooth \
  pulseaudio-utils pinentry-curses readline-common sed sl thefuck \
  ubuntu-desktop unattended-upgrades update-manager wget wiringpi
