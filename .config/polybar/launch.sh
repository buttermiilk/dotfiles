#!/bin/bash

# Kill existing bars
killall -q polybar

# Launch main bar
polybar omori &

echo "Launched bar."
