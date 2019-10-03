#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

if xrandr | grep -q 'DP-0 connected' ; then
    xrandr --output eDP-0 --mode 1920x1080 --rate 60.00 --output HDMI-1 --right-of eDP-0 --mode 1920x1080 --rate 60.00 --primary
fi

# Touchpad device.  Use 'xinput' to find the name.
# To view property values:  xinput list-props "$TOUCHPAD"
TOUCHPAD="SynPS/2 Synaptics TouchPad"

# Turn on palm detection for anything larger that "5".
xinput set-prop "$TOUCHPAD" "Synaptics Palm Detection" 1
xinput set-prop "$TOUCHPAD" "Synaptics Palm Dimensions" 10 1
xinput set-prop "$TOUCHPAD" "Synaptics Edge Scrolling" 0, 0, 0
#xinput set-prop "$TOUCHPAD" "Synaptics Area" 130 3130 0 0
