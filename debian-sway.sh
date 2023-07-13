#!/bin/sh

sudo apt install sway waybar swaylock swayidle swaybg policykit-1-gnome network-manager network-manager-gnome 
thunar thunar-archive-plugin thunar-volman file-roller alacritty mtools dosfstools acpi acpid avahi-daemon
gvfs-backends
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

light pamixer

### mantab
clipman wob libnotify-bin wofi suckless-tools vim
sudo apt install sway-notification-center
mako-notifier = dont use (use swaync instead)

backup config:
lacritty, calcurse, lf, mako, mpd, mpv, ncmpcpp, sway, swaylock, swaync, tmux, waybar, wob, wofi, zathura, zsh

### https://github.com/jgmdev/wl-color-picker
sudo apt install -y grim grimshot slurp imagemagick zenity wl-clipboard
git clone https://github.com/jgmdev/wl-color-picker
cd wl-color-picker
sudo make install

sudo apt install -y wf-recorder

wayland-protocols xwayland 
libgtk-layer-shell-dev ?
sudo apt install xdg-desktop-portal-wlr
brightnessctl dex jq 
l3afpad geany 
xdg-user-dirs-update
build-essential 
libpam0g-dev libxcb1-dev

### Microcode for Intel/AMD 
sudo apt install -y amd64-microcode
# sudo apt install -y intel-microcode 

#### For GTK setting
#### using gsettings command
sudo apt install -y libglib2.0-bin

### it will also install adwaita icon
sudo apt install arc-theme

### PDF viewer
sudo apt install -y mupdf zathura

### Image viewer
sudo apt install -y mirage sxiv

### Music/media player packages
sudo apt install -y mpc mpd ncmpcpp mpv

### Tmux and plugins
sudo apt install -y tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -r {lf,mpd,ncmpcpp,mpv,tmux,zathura} ~/.config

### Desktop background browser/handler 
sudo apt install -y galculator
sudo apt install -y brightnessctl pamixer light
sudo apt install -y trash-cli
sudo apt install -y calcurse

### Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2
sudo apt install -y fonts-noto-color-emoji fonts-font-awesome

### Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

### OBS Studio (if needed)
# sudo apt install -y qt6-wayland
# sudo apt install -y linux-headers-6.1.0-10-amd64 v4l2loopback-dkms
# sudo apt install -y obs-studio
# sudo modprobe v4l2loopback devices=1 video_nr=10 card_label="OBS Camera" exclusive_caps=1

### Polkit
sudo apt install -y policykit-1-gnome

### Neofetch/HTOP
sudo apt install -y neofetch htop

### Network Manager
sudo apt install -y network-manager network-manager-gnome 

### Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pulsemixer

echo >> " \
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi
\" ~/.zprofile
