!#/bin/bash

# TO RUN THIS SCRIPT YOU MUST UPDATE THE PERMISSION OF THE SCRIPT
# sudo chmod +x ./script.sh
# bash script.sh

# UTILS
# https://extensions.gnome.org/

# -----------------------
# | SOME CONFIGURATION  |
# -----------------------
mkdir ~/.themes
wget -c https://dl3.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0NDQ0MjczNCwidSI6bnVsbCwibHQiOiJkb3dubG9hZCIsInMiOiI4NGFjNTk0MTk5ODIxNTRlZmM5NDZmNzA5ZWJjOGEyZDRmZDcyNGQ3OThmMzg3OTkxNzc3NDdhNzhkYmVkZmZiYmMxZThlYjBkNDUxNDVhZGUxOWI1OTRmNmU3ZGM2MmVhNjY2YmQ5YTNmMGNlNTBhZTdiMzdiZDUwNWFkN2JmMCIsInQiOjE2NDQ3MTkwNzcsInN0ZnAiOiI2ZmU0MzcxNTM4MWMwODIxNjA5YzM0ZTk0OGEzMmI5YSIsInN0aXAiOiI0NS4xOTEuMTM0LjIxIn0.19JhXORc_W79xPphNB4z3v8O5mihx4h7WTBwoygS-gk/Nordic-darker-v40.tar.xz && tar xf Nordic-darker-v40.tar.xz -C ~/.themes

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

sudo apt-get install terminator


# -----------------------
# | SOME CONFIGURATION  |
# -----------------------

# ADDING NEOFETCH WHEN TERMINAL OPENS
# echo neofetch >> ~/.bashrc
