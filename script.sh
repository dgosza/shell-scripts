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
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wget -c https://dl3.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0NDQ0MjczNCwidSI6bnVsbCwibHQiOiJkb3dubG9hZCIsInMiOiI4NGFjNTk0MTk5ODIxNTRlZmM5NDZmNzA5ZWJjOGEyZDRmZDcyNGQ3OThmMzg3OTkxNzc3NDdhNzhkYmVkZmZiYmMxZThlYjBkNDUxNDVhZGUxOWI1OTRmNmU3ZGM2MmVhNjY2YmQ5YTNmMGNlNTBhZTdiMzdiZDUwNWFkN2JmMCIsInQiOjE2NDQ3MTkwNzcsInN0ZnAiOiI2ZmU0MzcxNTM4MWMwODIxNjA5YzM0ZTk0OGEzMmI5YSIsInN0aXAiOiI0NS4xOTEuMTM0LjIxIn0.19JhXORc_W79xPphNB4z3v8O5mihx4h7WTBwoygS-gk/Nordic-darker-v40.tar.xz && tar xf Nordic-darker-v40.tar.xz -C ~/.themes

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
sudo apt-get install \
neofetch \
tree \
gnome-tweak-tool \
# gnome-shell-extension-dash-to-panel -y \
# gnome-tweaks \
papirus-icon-theme \
default-jre -y \
default-jdk -y \
code \
spotify-client

sudo apt-get install terminator


# -----------------------
# | SOME CONFIGURATION  |
# -----------------------

# ADDING NEOFETCH WHEN TERMINAL OPENS
echo neofetch >> ~/.bashrc
