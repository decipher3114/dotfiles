#!/bin/bash
sudo sed -i '/\[extra\]/,/Include/ s/^#//' /etc/pacman.conf
sudo pacman -Syyu
sudo pacman -S fish starship git
chsh -s /usr/bin/fish