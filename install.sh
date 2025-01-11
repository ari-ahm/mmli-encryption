#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# List of required tools
required_tools=("cryptsetup" "dd" "mkfs.ext4" "mount" "umount")

apt-get update
# Check if each required tool is installed
for tool in "${required_tools[@]}"; do
    if ! command -v $tool &> /dev/null; then
        echo "$tool is not installed. Installing..."
        apt-get install -y $tool
    fi
done

# Copy mmli to /usr/local/bin
cp mmli /usr/local/bin/

# Make mmli executable
chmod +x /usr/local/bin/mmli

echo "mmli has been installed to /usr/local/bin"