#!/bin/bash

# Get battery information using upower
battery_path=$(upower -e | grep 'battery')
battery_percentage=$(upower -i $battery_path | grep percentage | awk '{print $2}' | sed 's/%//')

# Get the battery status (charging or discharging)
battery_status=$(upower -i $battery_path | grep state | awk '{print $2}')

# Set the battery icon based on the status
if [[ $battery_status == "charging" ]]; then
    icon="󰂄"  # Charging icon (for when plugged in)
elif [[ $battery_status == "discharging" ]]; then
    icon="󰁹"  # Discharging icon (for on battery)
else
    icon="󰂄"  # Default icon (fallback if status is unknown)
fi

# Output the battery status with icon in orange and percentage in purple
echo -n "%{F#FF9E64}$icon %{F#9A3B8C}$battery_percentage%"  # Orange for icon, Purple for percentage
# bb9af7
#9a3b8c

#ff9e64


