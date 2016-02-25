:: runVNC_win.cmd
:: Small batch script to allow the launching of VNC Viewer from Windows
:: to the correct host (untested)
:: Troy Daniels 25/2/16
@ECHO OFF

SET host="104.199.146.199::5902"

SET path="C:\Program Files\RealVNC\VNC Viewer"

START "%path%\vncviewer.exe"  param1 "%host&" 

