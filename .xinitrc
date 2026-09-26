/usr/bin/pipewire &

setxkbmap -layout us -variant altgr-intl -option ctrl:nocaps &

#xmodmap -e "keycode 118 = Delete" &
#xmodmap -e "keycode 119 = Insert" &
xinput set-prop 11 328 -0.8 &
xinput set-prop 10 174 0 &

lid_disable &

brightnessctl set 600 &

sudo rfkill unblock "$(rfkill list | grep "Wireless" | sed 's/:.*//')" &

amixer set Master 80% &
sleep 10s && amixer set Master unmute &

while true
do
    xsetroot -name "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | sed 's/percentage: *//;s/(.*//' )  $( amixer get Master | grep "Mono: Playback" | sed 's/.* [0-9]* //;s/ \[[-0-9\.]*dB.*//;s/%//' ) $(date +' %V %d.%m.%Y  %H:%M:%S %z')"
    sleep 1s
done &

exec dwm
