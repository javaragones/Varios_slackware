#!/bin/bash
#
#
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session sway

# EXPERIMENTAL. 
##
# IMPORTANTE: Para que funcione pipewire por este método, debe estar inhabilitado en el sistema (pipewire-disable.sh).
#
/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire 
/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse
/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber

exec dbus-launch --sh-syntax --exit-with-session Hyprland
