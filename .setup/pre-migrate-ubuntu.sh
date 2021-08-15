#!/bin/sh
# vim: set ft=sh :

set -eu

export DEBIAN_FRONTEND=noninteractive

apt-get -y install apt-transport-https ca-certificates curl dkms gnupg \
  linux-generic linux-headers-generic linux-image-generic \
  ubuntu-advantage-tools update-manager-core
