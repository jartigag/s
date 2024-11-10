#!/bin/sh

# author:  @jartigag
# date:    2022-04-29
# version: 0.1

#$ xrandr --query
#  Screen 0: minimum 320 x 200, current 3840 x 1080, maximum 16384 x 16384
#  eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y axis) 309mm x 173mm
#     1920x1080     60.00*+  59.97    59.96    59.93    48.00
#     ...
#     320x180       59.84    59.32
#  HDMI-1 disconnected 1920x1080+1920+0 (normal left inverted right x axis y axis) 0mm x 0mm
#     1920x1080     60.00*
#  DP-1 disconnected (normal left inverted right x axis y axis)
#  HDMI-2 disconnected (normal left inverted right x axis y axis)
#$ xrandr --delmode HDMI-1 1920x1080

xrandr --addmode HDMI-1 1920x1080
xrandr --output HDMI-1 --mode 1920x1080 --left-of eDP-1

# Chromium/Google Chrome:
# Cast > Cast tab / Cast desktop > Screen 2
