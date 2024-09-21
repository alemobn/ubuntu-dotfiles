#!/bin/bash

echo -e "\n\033[1;35m[*] updating package list           \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt update

echo -e "\n\033[1;35m[*] upgrading installed packages     \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt upgrade -y

echo -e "\n\033[1;35m[*] installing common packages      \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt install -y \
    build-essential \
    git \
    curl \
    vim \
    htop \
    wget \
    unzip \
    gnome-tweaks \
    software-properties-common \
    flatpak

echo -e "\n\033[1;35m[*] installing visual studio code    \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo snap install --classic code

echo -e "\n\033[1;35m[*] installing google chrome         \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo -e "\n\033[1;35m[*] installing gimp                 \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt install -y gimp

echo -e "\n\033[1;35m[*] installing discord              \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt install -y discord

echo -e "\n\033[1;35m[*] installing neofetch              \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt install -y neofetch

echo -e "\n\033[1;35m[*] installing pfetch                \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
git clone https://github.com/dylanaraps/pfetch.git
chmod +x pfetch/pfetch
sudo mv pfetch/pfetch /usr/local/bin/
rm -rf pfetch

echo -e "\n\033[1;35m[*] installing grub customizer      \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install -y grub-customizer

echo -e "\n\033[1;35m[*] installing node.js and npm      \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt install -y nodejs npm

echo -e "\n\033[1;35m[*] installing whatsdesk            \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo snap install whatsdesk

echo -e "\n\033[1;35m[*] removing unnecessary packages    \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt autoremove -y

echo -e "\n\033[1;35m[*] cleaning package cache           \033[0m"
echo -e "\033[1;35m-------------------------------\033[0m"
sudo apt clean

echo -e "\n\033[1;36m[*] installation complete            \033[0m"
echo -e "\033[1;36m-------------------------------\033[0m"