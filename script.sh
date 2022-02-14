!#/bin/bash

# TO RUN THIS SCRIPT YOU MUST UPDATE THE PERMISSION OF THE SCRIPT
# sudo chmod +x ./script.sh
# bash script.sh

# UTILS
# https://extensions.gnome.org/

# -----------------------
# | SOME CONFIGURATION  |
# -----------------------
sudo apt-get install curl -y
mkdir ~/.themes
mkdir ~/.icons

# ICONS PAPIRUS
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# VSCODE
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https

# DOCKER
curl -fsSL https://get.docker.com | bash

# SPOTIFY
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# -----------------------
# |      ADD REPOS      |
# -----------------------
sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository universe

# -----------------------
# |    UPDATE SOURCES   |
# -----------------------
sudo apt-get -y update



# -----------------------
# |     INSTALL APPS    |
# -----------------------
# gnome-shell-extension-dash-to-panel -y \
# gnome-tweaks \
sudo apt-get install \
neofetch \
tree \
gnome-tweak-tool \
papirus-icon-theme \
default-jre \
default-jdk \
code \
notion \
terminator \
build-essential \
linux-headers-generic \
spotify-client -y



# -----------------------
# | SOME CONFIGURATION  |
# -----------------------
wget --user-agent="Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" https://www.vmware.com/go/getplayer-linux
chmod +x getplayer-linux
sudo ./getplayer-linux --required --eulas-agreed
rm -f getplayer-linux

# -----------------------
# |   INSTALL MANUALLY  |
# -----------------------

# https://www.gnome-look.org/p/1267246
# tar xf Nordic-darker-v40.tar.xz -C ~/.themes

# Virtual Box
# https://phoenixnap.com/kb/install-virtualbox-on-ubuntu

# VMWare
# https://pointcom.sampa.br/linux/como-instalar-o-vmware-workstation-player-no-ubuntu-20-04/

# ADDING NEOFETCH WHEN TERMINAL OPENS
# echo neofetch >> ~/.bashrc
