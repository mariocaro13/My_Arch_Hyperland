#!/bin/bash
# Kill and restart waybar

# Check if Waybar is running
pidof=$(pidof waybar)

if [ -z "$pidof" ]; then
  # Run Waybar on second plane
  waybar &
  echo "Waybar Started"
else
  # Kill  Waybar
  killall waybar
  echo "Waybar Ended"
fi
