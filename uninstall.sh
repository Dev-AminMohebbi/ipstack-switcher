#!/usr/bin/env bash
# =============================================================================================
#  _ ______   ______                  _         ______       _            _                 
# | (_____ \ / _____) _              | |       / _____)     (_)  _       | |                
# | |_____) | (____ _| |_ _____  ____| |  _   ( (____  _ _ _ _ _| |_ ____| |__  _____  ____ 
# | |  ____/ \____ (_   _|____ |/ ___) |_/ )   \____ \| | | | (_   _) ___)  _ \| ___ |/ ___)
# | | |      _____) )| |_/ ___ ( (___|  _ (    _____) ) | | | | | |( (___| | | | ____| |    
# |_|_|     (______/  \__)_____|\____)_| \_)  (______/ \___/|_|  \__)____)_| |_|_____)_|    
# ============================================================================================= 
#  IPStack Switcher - Uninstallation Script                                    
#  Author: MohammadAmin Mohebbi Nourulddin Vand                                
#  License: MIT                                                                
#  Repository: https://github.com/Dev-AminMohebbi/ipstack-switcher             
# ============================================================================================= 

set -euo pipefail

# Variables
INSTALL_DIR="/usr/local/bin"
TARGET_PATH="${INSTALL_DIR}/ipstack-switcher"

# Color formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RESET='\033[0m'
CHECK_MARK="✓"
CROSS_MARK="✗"

# Logging functions
log_info()    { echo -e "${CYAN}[INFO]${RESET} $*"; }
log_success() { echo -e "${GREEN}[${CHECK_MARK}]${RESET} $*"; }
log_error()   { echo -e "${RED}[${CROSS_MARK}] ERROR:${RESET} $*" >&2; }

# Check for root
require_root() {
    if [[ $EUID -ne 0 ]]; then
        log_error "This script must be run as root."
        echo -e "\n${YELLOW}Usage:${RESET} sudo ./uninstall.sh"
        exit 1
    fi
}

# Confirm uninstallation
confirm_uninstall() {
    echo -ne "${YELLOW}Are you sure you want to uninstall IPStack Switcher? (y/N): ${RESET}"
    read -r confirm
    if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
        log_info "Uninstallation cancelled."
        exit 0
    fi
}

# Perform uninstallation
uninstall_script() {
    if [[ -f "${TARGET_PATH}" ]]; then
        rm -f "${TARGET_PATH}"
        log_success "Removed: ${TARGET_PATH}"
    else
        log_error "File not found: ${TARGET_PATH}"
        exit 1
    fi
}

# Final message
final_message() {
    echo
    log_success "IPStack Switcher has been successfully uninstalled."
    echo -e "${CYAN}To reinstall it, run:${RESET} ${WHITE}sudo ./install.sh${RESET}"
}

# Main
main() {
    require_root
    confirm_uninstall
    uninstall_script
    final_message
}

main "$@"
