#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

log_message "Final setup script started"
print_bold_blue "\nCongratulations! Your Simple Hyprland setup is complete!"

log_message "If you want to customize sddm, you can visit https://github.com/uiriansan/SilentSDDM and Read the docs"
log_message "Some config I prefer https://github.com/LoneWolf4713/seraphic.dotfiles https://github.com/heisenburgh/pixarch https://github.com/nicefaa6waa/genshin-sddm-theme"
log_message "https://github.com/JaKooLit/simple-sddm https://github.com/AlfredoRamos/urbanlifestyle-sddm-theme https://github.com/binnewbs/arch-hyprland https://github.com/binnewbs/arch-hyprland"
log_message "https://github.com/ViegPhunt/Arch-Hyprland https://github.com/ViegPhunt/Dotfiles https://github.com/Mon4sm/monasm-dots"

print_bold_blue "\nRepository Information:"
echo "   - GitHub Repository: https://github.com/MinhCreator/simple-hyprland"
echo "   - If you found this repo helpful, please consider giving it a star on GitHub!"

print_bold_blue "\nContribute:"
echo "   - Feel free to open issues, submit pull requests, or provide feedback."
echo "   - Every contribution, big or small, is valuable to the community."

print_bold_blue "\nTroubleshooting:"
echo "   - If you encounter any issues, please check the GitHub issues section."
echo "   - Don't hesitate to open a new issue if you can't find a solution to your problem."

print_success "\nEnjoy your new Hyprland environment!"

echo "------------------------------------------------------------------------"
