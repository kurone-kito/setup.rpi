#!/bin/sh
# vim: set ft=sh :

set -eu

export DEBIAN_FRONTEND=noninteractive

apt-get -y update
apt-get -y upgrade
