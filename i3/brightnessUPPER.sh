#!/bin/zsh

currentBrightness=$(xbacklight -get)

if [ $currentBrightness -le 100 ]; then
  sudo xbacklight -inc 10
fi
