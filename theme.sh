DIR=~/Dashy_themes/color_themes/${1}
if [ -d "$DIR" ]; then
  echo "Applying theme.."
else
  echo "Error: Theme ${1} not found. Can not continue."
  exit 1
fi
rm ~/.config/polybar/colors.ini
cp ~/Dashy_themes/color_themes/${1}/colors.ini ~/.config/polybar/
pkill polybar
~/.config/polybar/launch.sh 
rm ~/.config/rofi/colors.rasi
cp ~/Dashy_themes/color_themes/${1}/colors.rasi ~/.config/rofi/    
nitrogen --save --set-scaled color_themes/${1}/wallpaper.png
