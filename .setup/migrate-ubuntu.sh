#!/bin/sh
# vim: set ft=sh :

set -eux
cd $(dirname $0)

export DEBIAN_FRONTEND=noninteractive

do-release-upgrade --allow-third-party -f DistUpgradeViewNonInteractive $@
