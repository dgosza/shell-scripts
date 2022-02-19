!#/bin/bash

# TO RUN THIS SCRIPT YOU MUST UPDATE THE PERMISSION OF THE SCRIPT
# sudo chmod +x ./script.sh
# bash script.sh

# UTILS
# https://extensions.gnome.org/
# https://blog.rocketseat.com.br/terminal-com-oh-my-zsh-spaceship-dracula-e-mais/
# https://pointcom.sampa.br/linux/como-instalar-o-vmware-workstation-player-no-ubuntu-20-04/
# https://extensions.gnome.org/

# -----------------------
# | SOME CONFIGURATION  |
# -----------------------
sudo apt-get install curl -y
mkdir ~/.themes
mkdir ~/.icons

# -----------------------
# |      ADD REPOS      |
# -----------------------
sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository universe
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

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
google-chrome-stable \
papirus-icon-theme \
default-jre \
default-jdk \
teamviewer \
terminator \
build-essential \
linux-headers-generic -y

sudo snap install \
discord \
1password \
vlc \
postman \
dbeaver-ce \
spotify \
notion-snap

sudo snap install code --classic
sudo snap install ant --classic

# ICONS PAPIRUS
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# TeamViewer
sudo sh -c "echo 'deb http://linux.teamviewer.com/deb stable main' >> /etc/apt/sources.list.d/teamviewer.list"
sudo sh -c "echo 'deb http://linux.teamviewer.com/deb preview main' >> /etc/apt/sources.list.d/teamviewer.list"
wget -q https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc -O- | sudo apt-key add -

# DOCKER
curl -fsSL https://get.docker.com | bash

# VMWARE
wget --user-agent="Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" https://www.vmware.com/go/getplayer-linux
chmod +x getplayer-linux
sudo ./getplayer-linux --required --eulas-agreed
rm -f getplayer-linux

# -----------------------
# |  POST INSTALLATION  |
# -----------------------

# THEME NORDIC
# https://www.gnome-look.org/p/1267246
# tar xf Nordic-darker-v40.tar.xz -C ~/.themes

# ZSH BASH AND SPACESHIP THEME 
# Install font https://github.com/tonsky/FiraCode/releases
# Install FireCode Font in Terminator. 

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
# ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

# gedit ~/.zshrc
# ZSH_THEME="spaceship"

# SPACESHIP_PROMPT_ORDER=(
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   exec_time     # Execution time
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )

# ADDING NEOFETCH WHEN TERMINAL OPENS
# echo neofetch >> ~/.bashrc
