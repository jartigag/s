#$ cat /usr/share/xsessions/plasma-i3.desktop
#  [Desktop Entry]
#  Type=XSession
#  Exec=$HOME/s/i3-kde.sh
#  DesktopNames=KDE
#  Name=Plasma with i3
#  Comment=Plasma with i3
env KDEWM=/usr/bin/i3 /usr/bin/startkde
