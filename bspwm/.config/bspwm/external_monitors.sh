#!/bin/bash

bspc monitor eDP -d I II III IV
# Second monitor
if [[ $(xrandr -q | grep 'HDMI-1-0 connected') ]]; then
    xrandr --output eDP --primary --mode 1920x1080 --rotate normal --output HDMI-1-0 --mode 1600x900 --rotate normal --left-of eDP
    # Workspaces
    bspc monitor HDMI-1-0 -d V VI VII VIII
else
    xrandr --output HDMI1 --off
    # Remove nodes
    while bspc node @V: --kill; do
        :
    done
    while bspc node @VI: --kill; do
        :
    done
    while bspc node @VII: --kill; do
        :
    done
    while bspc node @VIII: --kill; do
        :
    done
    # Remove workspaces
    bspc desktop -r V VI VII VIII
    # Remove monitor
    bspc monitor HDMI-1-0 -r
fi
