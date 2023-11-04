#!/bin/bash
#author: @jartigag
#date: 2022-03-02
#version: 1.0
#
# The idea is to associate a keyboard shortcut with this script + "TargetWindowName",
# so it brings the desired window to front when a shortcut is pressed.
#
#usage:
# $ ./bring_to_front.sh "Spotify" /tmp/spotify-winID.wid

REQUIRED_PKG="wmctrl"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt --yes install $REQUIRED_PKG
fi

windowTitle="$1"
widFile="$2"

echo $windowTitle
echo $widFile

if [ ! -f $widFile ]; then
        flagDone=`wmctrl -l | grep "$windowTitle" | cut -d " " -f1`
        while [ -z "$flagDone" ]
        do
                flagDone=`wmctrl -l | grep "$windowTitle" | cut -d " " -f1`
                sleep 1
        done
        echo "$flagDone" > $widFile
fi

wmctrl -ia $(< $widFile) || rm $widFile
