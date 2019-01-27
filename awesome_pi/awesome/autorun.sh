#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

#if xrandr | grep -q 'DP-0 connected' ; then
#    xrandr --output DP-0 --mode 1280x1024 --rate 60.00 --output eDP-1-1 --right-of DP-0 --mode 1920x1080 --rate 60.00 --primary
#fi
