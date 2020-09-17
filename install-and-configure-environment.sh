#!/bin/bash
sudo yum install epel-release -y
sudo yum install xclip -y
sudo dnf install chrome-gnome-shell -y

# tap to click
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

# install visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

# cascadia code font
wget https://github.com/microsoft/cascadia-code/releases/download/v2009.14/CascadiaCode-2009.14.zip && \
sudo mkdir -p /usr/share/fonts/truetype && \
sudo unzip CascadiaCode-2009.14.zip -d /usr/share/fonts/truetype && \
rm -f CascadiaCode-2009.14.zip*

# snap store
sudo dnf install snapd -y
sudo systemctl enable snapd.service
sudo systemctl start snapd.service

