#!/bin/bash
sudo yum install epel-release -y
sudo yum install xclip -y

# configure environment

## show full path on nautilus
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
