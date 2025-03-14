#!/bin/bash
#
/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire
/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse
/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber
