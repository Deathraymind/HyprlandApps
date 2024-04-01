#!/bin/bash
yay -S looking-glass-client
mkdir -p ~/.local/bin/looking-glass/
cp looking-glass-client.sh ~/.local/bin/looking-glass/
cp looking-glass.desktop ~/.local/share/applications/
cp looking-glass.png ~/.local/bin/looking-glass/
chmod +x ~/.local/share/applications/looking-glass.desktop
chmod +x ~/.local/bin/looking-glass/looking-glass-client.sh