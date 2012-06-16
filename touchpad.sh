#!/bin/sh

icon="/home/alberto/.icons/elementary/devices/48/input-mouse.svg"

status=`synclient -l | grep Touch`

if [[ $status == '    TouchpadOff             = 0' ]]; then
  synclient TouchpadOff=1
  notify-send \Touchpad disabled -i $icon --hint=int:transient:1

else
  synclient TouchpadOff=0
  notify-send \Touchpad enabled -i $icon --hint=int:transient:1 
fi
exit
