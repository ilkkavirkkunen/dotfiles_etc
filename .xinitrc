/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

setxkbmap -layout us -variant altgr-intl -option ctrl:nocaps &

xinput set-prop 11 311 -0.7
while true
do
    xsetroot -name "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | sed 's/percentage: *//;s/(.*//' )  $( amixer get Master | grep "Mono: Playback" | sed 's/.* [0-9]* //;s/ \[[-0-9\.]*dB.*//;s/%//' ) $(date +' %j %d.%m.%Y  %H:%M:%S %z')"
    sleep 1
done &

exec dwm
