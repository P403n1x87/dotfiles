#!/bin/bash

pkexec systemd-nspawn \
  --setenv=DISPLAY=unix$DISPLAY \
  --setenv=PULSE_SERVER=unix:/run/user/1000/pulse/native \
  --bind-ro /tmp/.X11-unix \
  --bind /run/user/1000 \
  --bind-ro /run/user/1000/bus \
  --bind /dev/snd \
  -u spotify \
  -M spotify \
  spotify
