#!/bin/sh
# vim: set ft=sh :

set -eu

# Disable the screen lock
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
gsettings set org.gnome.desktop.screensaver lock-enabled 'false'
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend 'false'

# Disable the Gnome initial setup
HOME_CONFIG="${HOME}/.config"
DONE_CONFIG="${HOME_CONFIG}/gnome-initial-setup-done"
mkdir -p ${HOME_CONFIG}
touch ${DONE_CONFIG}
echo "yes" >> ${DONE_CONFIG}
