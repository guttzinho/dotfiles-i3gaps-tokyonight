#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Start new bat instances
polybar -r mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
