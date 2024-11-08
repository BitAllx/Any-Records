#!/bin/sh

# Colors and formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'
BOLD='\033[1m'

# Banner function
print_banner() {
    clear
    printf "%b" "$BLUE"
    echo "╔════════════════════════════════════════╗"
    echo "║          DNS Query Tool v1.0           ║"
    echo "║    Advanced Domain Information Tool    ║"
    echo "╚════════════════════════════════════════╝"
    printf "%b" "$NC\n"
}

# Error handling function
error_exit() {
    printf "%b[ERROR]%b %s\n" "$RED" "$NC" "$1"
    exit 1
}

# Validation function
validate_domain() {
    case "$1" in
        *[!a-zA-Z0-9.-]* | "")
            error_exit "Invalid domain format"
            ;;
    esac
    case "$1" in
        *.*)
            : ;;
        *)
            error_exit "Invalid domain format (missing TLD)"
            ;;
    esac
}

# Function to get nameserver
get_nameserver() {
    local domain="$1"
    # Obtener directamente el nameserver sin la IP
    ns=$(nslookup -type=ns "$domain" 2>/dev/null | grep "nameserver" | head -n 1 | awk '{print $4}')
    if [ -z "$ns" ]; then
        error_exit "Could not resolve nameserver for $domain"
    fi
    echo "$ns"
}

# Check required tools
check_dependencies() {
    if ! command -v nslookup >/dev/null 2>&1; then
        error_exit "nslookup is required but not installed."
    fi
    if ! command -v awk >/dev/null 2>&1; then
        error_exit "awk is required but not installed."
    fi
}

# Function to perform DNS query
perform_dns_query() {
    local domain="$1"
    local nameserver="$2"
    local temp_file="/tmp/dns_query_$$.txt"
    
    # Realizar la consulta y guardar en archivo temporal
    if nslookup -type=any "$domain" "$nameserver" > "$temp_file" 2>/dev/null; then
        # Verificar si hay resultados
        if [ -s "$temp_file" ]; then
            cat "$temp_file"
            rm -f "$temp_file"
            return 0
        else
            rm -f "$temp_file"
            return 1
        fi
    else
        rm -f "$temp_file"
        return 1
    fi
}

# Main function
main() {
    print_banner
    check_dependencies

    # Domain input
    printf "%bPlease enter the domain to query:%b\n" "$YELLOW" "$NC"
    printf "➜ "
    read domain

    # Validate domain
    validate_domain "$domain"

    # Get nameserver
    printf "\n%b[+]%b Resolving nameserver for %b%s%b...\n" "$GREEN" "$NC" "$BOLD" "$domain" "$NC"
    nameserver=$(get_nameserver "$domain")

    printf "%b[✓]%b Found nameserver: %b%s%b\n" "$GREEN" "$NC" "$BOLD" "$nameserver" "$NC"

    # Ask for save option
    printf "\n%bDo you want to save the DNS records to a file? [y/N]:%b\n" "$YELLOW" "$NC"
    printf "➜ "
    read save

    case "$save" in
        [Yy]*)
            printf "\n%bEnter the output filename:%b\n" "$YELLOW" "$NC"
            printf "➜ "
            read file_name

            # Add timestamp to filename
            timestamp=$(date +%Y%m%d_%H%M%S)
            file_name="${file_name}_${timestamp}.txt"

            printf "\n%b[+]%b Querying DNS records...\n" "$GREEN" "$NC"
            {
                echo "# DNS Query Report for $domain"
                echo "# Generated on $(date)"
                echo "# Nameserver: $nameserver"
                echo
                if perform_dns_query "$domain" "$nameserver"; then
                    printf "%b[✓]%b Results saved to: %b%s%b\n" "$GREEN" "$NC" "$BOLD" "$file_name" "$NC"
                else
                    error_exit "Failed to query DNS records"
                fi
            } > "$file_name"
            ;;
        *)
            printf "\n%b[+]%b Querying DNS records...\n" "$GREEN" "$NC"
            printf "\n%bDNS Query Results:%b\n\n" "$BOLD" "$NC"
            if ! perform_dns_query "$domain" "$nameserver"; then
                error_exit "Failed to query DNS records"
            fi
            ;;
    esac
}

# Trap Ctrl+C
trap 'printf "\n%b[!]%b Script interrupted by user\n" "$RED" "$NC"; exit 1' INT

# Execute main function
main
