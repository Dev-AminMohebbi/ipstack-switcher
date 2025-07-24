#!/usr/bin/env bash
# =============================================================================================
#  _ ______   ______                  _         ______       _            _                 
# | (_____ \ / _____) _              | |       / _____)     (_)  _       | |                
# | |_____) | (____ _| |_ _____  ____| |  _   ( (____  _ _ _ _ _| |_ ____| |__  _____  ____ 
# | |  ____/ \____ (_   _|____ |/ ___) |_/ )   \____ \| | | | (_   _) ___)  _ \| ___ |/ ___)
# | | |      _____) )| |_/ ___ ( (___|  _ (    _____) ) | | | | | |( (___| | | | ____| |    
# |_|_|     (______/  \__)_____|\____)_| \_)  (______/ \___/|_|  \__)____)_| |_|_____)_|    
# =============================================================================================  
#  IPStack Switcher - Installation Script                                       
#  Author: MohammadAmin Mohebbi Nourulddin Vand                                 
#  License: MIT                                                                
#  Repository: https://github.com/Dev-AminMohebbi/ipstack-switcher         
# =============================================================================================

set -euo pipefail

# Variables
SCRIPT_NAME="ipstack-switcher.sh"
INSTALL_DIR="/usr/local/bin"
TARGET_PATH="${INSTALL_DIR}/ipstack-switcher"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

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
        echo -e "\n${YELLOW}Usage:${RESET} sudo ./install.sh"
        exit 1
    fi
}

# Check required files
check_script_file() {
    if [[ ! -f "${REPO_ROOT}/${SCRIPT_NAME}" ]]; then
        log_error "File ${SCRIPT_NAME} not found in repository root: ${REPO_ROOT}"
        exit 1
    fi
}

# Perform installation
install_script() {
    log_info "Installing IPStack Switcher..."

    # Copy script and make executable
    cp "${REPO_ROOT}/${SCRIPT_NAME}" "${TARGET_PATH}"
    chmod +x "${TARGET_PATH}"

    log_success "Installed to: ${TARGET_PATH}"

    # Check if it's in PATH
    if ! command -v ipstack-switcher &>/dev/null; then
        log_info "It seems ${TARGET_PATH} is not in your PATH."
        echo -e "${YELLOW}You can run it using:${RESET} ${WHITE}sudo ipstack-switcher${RESET}"
    fi
}

# Show final message
final_message() {
    echo
    log_success "IPStack Switcher installed successfully!"
    echo -e "${CYAN}Usage:${RESET} ${WHITE}sudo ipstack-switcher${RESET}"
    echo -e "${CYAN}Repo:${RESET}  ${WHITE}https://github.com/Dev-AminMohebbi/ipstack-switcher${RESET}"
}

# Main
main() {
    require_root
    check_script_file
    install_script
    final_message
}

main "$@"
