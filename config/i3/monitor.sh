#!/bin/bash
XCURSOR_SIZE=16 xrandr \
  --output DisplayPort-1 --mode 1920x1080 --rate 60 --rotate normal --primary \
  --output DisplayPort-2 --mode 1920x1080 --rate 60 --rotate right --right-of DisplayPort-1
