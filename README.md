# run-vnc

Simple script to help launch VNC Viewer and connect to OMG's cloud host on a variety of OSs

###OSX/Linux
```bash
git clone https://github.com/troydaniels/run-vnc.git
cd run-vnc
chmod 777 runVNC.sh
mv runVNC ~/Desktop/Launch\ VNC
```

This will create a file called **Launch VNC** on your Desktop.
Right click on this file, select *Open With*, and click on terminal.
Opening this file should then launch `VNC Viewer`, with a connection to the correct host.

You can use the command `vncpasswd` to generate a hashed password file in ~/.vnc/passwd and negate the need to manually enter a password everytime this is launched. For security purposes, this file is not in this repository.
A file generated by `vncpasswd` can be shared amongst the team to allow quicker login.

###Windows
(Note, this script is untested. Please see me if you have a problem running it on your machine.)

[Download a zip](https://github.com/troydaniels/run-vnc/archive/master.zip) of this repository, unzip it, and move `runVNC_win.cmd` to the Desktop.

Double click this file to launch. Feel free to rename it.
Similarly to the above, generating a password hash with `vncpasswd` should allow you to launch the VM without having to manually enter a password.
