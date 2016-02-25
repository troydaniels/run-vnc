
#!/bin/bash

# runVNC.sh
# Small script to allow the launching of VNC Viewer from a desktop icon
# on OSX/Linux
#
# Troy Daniels 25/2/16

host=104.199.146.199::5909

noInstall="ERROR: VNC Viewer not found. Please download and try again."

path=$(which vncviewer) || (>&2 echo "$noInstall" && exit 1)

"$path" "$host"
