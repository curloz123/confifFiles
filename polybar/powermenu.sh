#!/bin/bash


rofi_cmd="rofi -dmenu -markup-rows -p Power-Menu  "

options=$(
cat <<EOF
<span foreground='#7aa2f7'>   </span> <span foreground='#c0caf5'>lock</span>
<span foreground='#e0af68'>   </span> <span foreground='#c0caf5'>logout</span>
<span foreground='#ff9e64'>   </span> <span foreground='#c0caf5'>reboot</span>
<span foreground='#e06c75'>   </span> <span foreground='#c0caf5'>shutdown</span>
EOF
)

chosen=$(echo "$options" | $rofi_cmd)



case "$chosen" in
  *lock*) i3lock -i ~/Pictures/girl.png;;
  *logout*) i3-msg exit ;;
  *reboot*) sudo reboot -f ;;
  *shutdown*) sudo poweroff -f ;;
esac

i3lock -i ~/Pictures/girl.png
