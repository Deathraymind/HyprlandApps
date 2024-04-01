#This is a script that replaces amdvlk with vulkan-radeon 
# dont know why but amdvlk is unusable with most games and steamvr

sudo pacman -S vulkan-radeon
sudo pacman -R amdvlk
clear
echo "!!!!!!If you are on hyprland you need to enter the below command in the steamvr start up"
echo "RADV_DEBUG=zerovram QT_QPA_PLATFORM=xcb %command%"
