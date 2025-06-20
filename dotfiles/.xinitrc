xmodmap ~/.Xmodmap
xrdb ~/.Xresources
# expressvpn connect
exec picom --experimental-backends &
# exec blueman-applet &

# bluetoothctl power on
# bluetoothctl connect E4:50:EB:F0:B1:B7

xset s off
xset -dpms
xset s noblank

# xrandr --output DVI-D-0 --primary

# TRACKPAD=$(xinput | grep Apple | grep -o -E '[0-9]+' | sed -n '2 p')
# xinput set-prop $TRACKPAD 157 -1 0 1 0 -1 1 0 0 1 # Invert trackpad
# xinput set-prop $TRACKPAD 290 1 # Invert Scrolling
xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' 0.4

xrdb /home/essex/.Xresources
xrandr --output HDMI-2 --above eDP-1

exec i3
# exec dwm
# xrandr --output VGA-0 --mode 1920x1080 --left-of DVI-D-0 --rotate right
# i3-msg "workspace 1, move workspace to output DVI-D-0"
