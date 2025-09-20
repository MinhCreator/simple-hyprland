#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

log_message "Installation started for utilities section"
print_info "\nStarting utilities setup..."

run_command "yay -S --noconfirm ags-hyprpanel-git" "Install hyprpanel - Status Bar" "yes"

run_command "yay -S --sudoloop --noconfirm rofi rofi-emoji" "Install rofi - Application Launcher" "yes" "no"


run_command "pacman -S --noconfirm cliphist" "Install Cliphist - Clipboard Manager" "yes"

run_command "yay -S --sudoloop --noconfirm swww waypaper" "Install SWWW for wallpaper management" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprpicker" "Install Hyprpicker - Color Picker" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprlock" "Install Hyprlock - Screen Locker (Must)" "yes" "no"


run_command "yay -S --sudoloop --noconfirm wlogout" "Install Wlogout - Session Manager" "yes" "no"

run_command "yay -S --sudoloop --noconfirm grimblast" "Install Grimblast - Screenshot tool" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hypridle" "Install Hypridle for idle management (Must)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm matugen-bin" "Install matugen colors (Must)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm fastfetch" "Install get hardware info(Must)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm btop cava octopi eza nautilus neovim neovide wl-clipboard playerctl lazygit flatpak ripgrep wget zoxide zsh curl network-manager-applet" "Install Quality of life(Must)" "yes" "no"

run_command "curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin"

run_command "flatpak install flathub org.gnome.Boxes" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.brave.Browser" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.usebottles.bottles" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.github.rafostar.Clapper" "install flathub app" "yes" "no"
run_command "flatpak install flathub org.gnome.eog" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.github.tchx84.Flatseal" "install flathub app" "yes" "no"
run_command "flatpak install flathub io.gitlab.adhami3310.Impression" "install flathub app" "yes" "no"
run_command "flatpak install flathub io.missioncenter.MissionCenter" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.obsproject.Studio" "install flathub app" "yes" "no"
run_command "flatpak install flathub org.gnome.NautilusPreviewer" "install flathub app" "yes" "no"
run_command "flatpak install flathub io.gitlab.theevilskeleton.Upscaler" "install flathub app" "yes" "no"
run_command "flatpak install flathub io.github.flattool.Warehouse" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.google.Chrome" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.visualstudio.code" "install flathub app" "yes" "no"
run_command "flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community" "install flathub app" "yes" "no"

echo "------------------------------------------------------------------------"