#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

log_message "Installation started for apply config section"
print_info "\nStarting apply config setup..."

run_command "sudo mv $BASE_DIR/configs/.config ~/"

run_command "sudo mv $BASE_DIR/assets/wallpaper ~/Pictures"

run_command "sudo mv $BASE_DIR/.zshenv ~/"
run_command "sudo mv $BASE_DIR/.zshrc ~/"
run_command "sudo mv $BASE_DIR/.zsh_history ~/"

echo " Apply config Done"

echo "------------------------------------------------------------------------"
