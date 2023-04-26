#!/bin/bash

REQUIRED_PKG="x11-xserver-utils"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt --yes install $REQUIRED_PKG
fi

xrandr --output HDMI-1 --brightness 0.4 --gamma 1.0:0.9:0.8 # 5000K
