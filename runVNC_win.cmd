:: runVNC_win.cmd
:: Small batch script to allow the launching of VNC Viewer from Windows
:: to the correct host (untested)
:: Troy Daniels 25/2/16
@ECHO OFF

SET host="104.199.146.199::5902"

SET noInstall="ERROR: VNC Viewer not found. Please download and try again."

SET path=where vncviewer

IF NOT EXIST %path%(
    ECHO %noInstall%
    EXIT /B 1
    )

START "" "%path%" "%host%" 

