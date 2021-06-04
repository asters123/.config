#!/bin/bash
feh --bg-scale ~/.config/dwm/image/2.jpg &
xcompmgr &
fcitx &
/bin/bash ~/.config/dwm/bash/auto_dwm/auto_restart_firewall.sh &
ifconfig wlp3s0b1 down
