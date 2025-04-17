#!/bin/bash


rofi_cmd="rofi -dmenu -markup-rows -p Power-Menu  "

options=$(
cat <<EOF
<span foreground='#7aa2f7'>   </span> <span foreground='#c0caf5'>Lock</span>
<span foreground='#e0af68'>   </span> <span foreground='#c0caf5'>Logout</span>
<span foreground='#ff9e64'>   </span> <span foreground='#c0caf5'>Reboot</span>
<span foreground='#e06c75'>   </span> <span foreground='#c0caf5'>Shutdown</span>
EOF
)

chosen=$(echo "$options" | $rofi_cmd)



case "$chosen" in
  *Lock*) i3lock -c 000000 ;;
  *Logout*) i3-msg exit ;;
  *Reboot*) sudo reboot -f ;;
  *Shutdown*) sudo poweroff -f ;;
esac

