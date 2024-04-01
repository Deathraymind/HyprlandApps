#!/bin/bash

# Create necessary directories
mkdir -p ~/.local/bin/alvr
mkdir -p ~/.local/bin

# GitHub repo in the format "username/repo"
ALVR_REPO="alvr-org/ALVR"
ADB_REPO="alvr-org/ADBForwarder"

# GitHub API URL for the latest release
ALVR_API_URL="https://api.github.com/repos/$ALVR_REPO/releases/latest"
ADB_API_URL="https://api.github.com/repos/$ADB_REPO/releases/latest"

# Use curl to get the download URL for the latest AppImage release
ALVR_DOWNLOAD_URL=$(curl -s $ALVR_API_URL | jq -r '.assets[] | select(.name | test("x86_64.AppImage")) | .browser_download_url')

# Download the latest version using wget or curl
wget $ALVR_DOWNLOAD_URL -O ~/.local/bin/alvr/ALVR-latest-x86_64.AppImage

# Make the downloaded file executable
chmod +x ~/.local/bin/alvr/ALVR-latest-x86_64.AppImage

# Use curl to get the download URL for the latest release that matches the Linux x64 .zip file
ADB_DOWNLOAD_URL=$(curl -s $ADB_API_URL | jq -r '.assets[] | select(.name | test("linux-x64.zip$")) | .browser_download_url')

# Download the latest version using wget or curl
wget $ADB_DOWNLOAD_URL -O ~/.local/bin/alvr/ADBForwarder-linux-x64-latest.zip

# Optionally, unzip the downloaded file
unzip ~/.local/bin/alvr/ADBForwarder-linux-x64-latest.zip -d ~/.local/bin/alvr/ADBForwarder-linux-x64-latest

# Change ownership to the user
sudo chown -R $(whoami):$(whoami) ~/.local/bin/alvr/ADBForwarder-linux-x64-latest/adbforwarder

# Install required packages
sudo pacman -S android-udev
sudo udevadm control --reload-rules
sudo systemctl restart systemd-udevd.service
sudo gpasswd -a $(whoami) adbusers

# Copy the script to the bin directory
cp alvr.sh ~/.local/bin/alvr/
cp alvr.png ~/.local/bin/alvr/

# Make the script executable
chmod +x ~/.local/bin/alvr/alvr.sh

# Create a desktop entry for ALVR
cp alvr.desktop ~/.local/share/applications/

chmod +x ~/.local/share/applications/alvr.desktop