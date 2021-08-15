#!/bin/sh
# vim: set ft=sh :

set -eu

mount -o exec,ro /dev/cdrom /media/cdrom
cd /media/cdrom/
./install -i
cd /
umount /dev/cdrom
