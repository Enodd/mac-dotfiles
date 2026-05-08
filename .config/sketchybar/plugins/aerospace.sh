#!/usr/bin/env bash

WS_ID="$1"
FOCUSED_GLOBAL=$(aerospace list-workspaces --focused)

# Znajdź aktywny workspace na monitorze tego workspace'a
for MON_ID in $(seq 1 $(aerospace list-monitors | wc -l | tr -d ' ')); do
  if aerospace list-workspaces --monitor $MON_ID | grep -q "^${WS_ID}$"; then
    MONITOR_ACTIVE=$(aerospace list-workspaces --monitor $MON_ID 2>/dev/null)
    break
  fi
done

if [ "$WS_ID" = "$FOCUSED_GLOBAL" ]; then
  sketchybar --set $NAME background.drawing=on background.color=0x99ffffff
elif [ "$WS_ID" = "$MONITOR_ACTIVE" ]; then
  sketchybar --set $NAME background.drawing=on background.color=0x22ffffff
else
  sketchybar --set $NAME background.drawing=off
fi
