:: runVNC_win.cmd
:: Small batch script to allow the launching of VNC Viewer from Windows
:: to the correct host
::
:: Troy Daniels 25/2/16


@ECHO OFF

SET host="104.199.146.199::5902"
SET noInstall="ERROR: VNC Viewer not found. Please download and try again."
SET path=C:\Program Files\RealVNC\VNC Viewer\vncviewer.exe
SET passPath=C:\Program Files\RealVNC\VNC Viewer\passwd

IF NOT EXIST %path%(
    ECHO %noInstall%    
)

START "" "%path%" -passwd "%passPath%" "%host%" 
