#!/bin/bash
#
displays=$(xrandr --current | grep ' connected' | cut -d' ' -f1)

if echo "$displays" | grep -q "DP-3"; then
  echo "display connected"

  ~/.screenlayout/office.sh

else
  echo "No Type-C display"
fi
