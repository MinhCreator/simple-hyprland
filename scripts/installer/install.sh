#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

# Trap for unexpected exits
trap 'trap_message' INT TERM

log_message "auto script based on https://github.com/gaurav23b/simple-hyprland/"

# Script start
log_message "Installation started"
print_bold_blue "\nSimple Hyprland"
echo "---------------"

# Check if running as root
check_root

# Check if OS is Arch Linux
check_os

# Run child scripts
run_script "prerequisites.sh" "Prerequisites Setup"
run_script "hypr.sh" "Hyprland & Critical Softwares Setup"
run_script "utilities.sh" "Basic Utilities"
run_script "theming.sh" "Themes and Tools Setup"
run_script "apply_config.sh" "Apply config setup"
run_script "final.sh" "Final Setup"

print_bold_blue "\n🌟 Setup Complete\n"
log_message "Installation completed successfully"
