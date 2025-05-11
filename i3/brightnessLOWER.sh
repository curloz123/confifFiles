#!/bin/zsh

currentBrightness=$(xbacklight -get)

if [ $currentBrightness -ge 15 ]; then
  sudo xbacklight -dec 10
fi
