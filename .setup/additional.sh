#!/bin/sh
# vim: set ft=sh :

set -eu

export DEBIAN_FRONTEND=noninteractive

apt-get -y install language-pack-ja ubuntu-desktop update-manager wiringpi
