#!/bin/bash
sudo yum install epel-release -y
sudo yum install xclip -y
sudo yum install ntfs-3g

# configure environment

## show full path on nautilus
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

## install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall google-chrome-stable_current_x86_64.rpm -y
rm -f google-chrome-stable_current_x86_64.rpm*
