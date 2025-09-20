#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

log_message "Installation started for hypr section"
print_info "\nStarting hypr setup..."
print_info "\nEverything is recommended to INSTALL"

run_command "pacman -S --noconfirm hyprland hyprcursor hyprpolkitagent" "Install Hyprland (Must) and util" "yes"

run_command "pacman -S --noconfirm xdg-desktop-portal-hyprland" "Install XDG desktop portal for Hyprland" "yes"

run_command "pacman -S --noconfirm polkit-kde-agent polkit" "Install KDE Polkit agent for authentication dialogs" "yes"

run_command "pacman -S --noconfirm dunst" "Install Dunst notification daemon" "yes"

run_command "pacman -S --noconfirm qt5-wayland qt6-wayland" "Install QT support on wayland" "yes"

run_command "pacman -S --noconfirm xdg-desktop-portal xdg-desktop-portal-hyprland xorg-xwayland xorg-server wayland wayland-protocols" "Install xdg  support on wayland" "yes"

run_command "pacman -S --noconfirm gtk4 gtk3" "Install gtk support " "yes"

run_command "pacman -S --noconfirm nvidia-utils nvidia-settings nvidia-prime nvidia-dkms" "Install nvidia support " "yes"

echo "------------------------------------------------------------------------"