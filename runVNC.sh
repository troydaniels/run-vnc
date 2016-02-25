#!/bin/bash

# runVNC.sh
# Small script to allow the launching of VNC Viewer from a desktop icon
# on several OSs
# Tested on OSX - Install paths may have to be modified on other machines
# Troy Daniels 25/2/16

host=104.199.146.199::5902
unamestr=$(uname)
pass=~/.vnc/passwd

#Paths
macPath="/Applications/RealVNC/VNC Viewer.app/Contents/MacOS"
linuxPath="/usr/bin  # Depending on install, may be /usr/local/bin"
windowsPath="C:\Program Files\RealVNC\VNC Viewer"

if [[ "$unamestr" =~ Darwin ]]; then # Running OSX
  "$macPath/vncviewer" $host
elif [[ "$unamest" =~ Linux ]]; then # Maybe some awesome person is running Debian??
  ./"$linuxPath/vncviewer" $host
else # Windows (Hopfully noone here is running BSD :p)
  "$windowsPath\vncviewer.exe" $host
fi
