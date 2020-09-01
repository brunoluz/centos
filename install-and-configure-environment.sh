#!/bin/bash
sudo dnf install epel-release -y
sudo dnf install xclip -y
sudo dnf install ntfs-3g
sudo dnf install git

## show full path on nautilus
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

## install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall google-chrome-stable_current_x86_64.rpm -y
rm -f google-chrome-stable_current_x86_64.rpm*

# update grub
sudo grub2-mkconfig --output=/boot/grub2/grub.cfg
