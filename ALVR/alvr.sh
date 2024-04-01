#!/bin/bash

# Function to start ALVR and ADBForwarder in parallel
start_ALVR_and_ADBForwarder() {
    # Run ALVR in the background
    cd ~/.local/bin/alvr & ./ALVR-latest-x86_64.AppImage &

    # Use kitty to open a new window and run ADBForwarder within it
    kitty bash -c "cd ~/.local/bin/alvr/ADBForwarder-linux-x64-latest/adbforwarder && ./ADBForwarder" &

    echo "ALVR and ADBForwarder started. Close them manually when done."
}

# Start ALVR and ADBForwarder
start_ALVR_and_ADBForwarder

# Here, we don't include a monitoring loop because both processes need to run until manually stopped.
# You can implement additional logic here if you want to monitor or manage these processes in a specific way.
