#!/bin/bash
echo "Warning! This will remove your existing rofi and polybar configuration files (if any) from the directories ~/.config/rofi & ~/.config/polybar respectively"
read -p "Do you want to continue? (Enter Y or y to continue): " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Starting...."
    echo "Making directory"
    mkdir ~/Dashy_themes
    cp -R polybar ~/Dashy_themes/
    cp -R rofi ~/Dashy_themes/
    cp -R color_themes ~/Dashy_themes/
    rm -rf ~/.config/rofi || echo "rofi is not present in the .config directory"
    rm -rf ~/.config/polybar || echo "polybar is not present in the .config directory"
    echo "Copying config files..."
    cp -R theme.sh ~/Dashy_themes/
    chmod +x ~/Dashy_themes/theme.sh
    cp -R rofi ~/.config/
    cp -R polybar ~/.config/
    chmod +x ~/.config/rofi/rofi.sh
    chmod +x ~/.config/polybar/launch.sh
    chmod +x ~/.config/polybar/scripts/*.sh
    chmod +x ~/.config/polybar/scripts/check-network
    chmod +x ~/.config/polybar/scripts/checkupdates
    echo "Done!"
else
    exit
fi
    


