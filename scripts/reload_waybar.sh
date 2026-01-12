#!/usr/bin/env bash
# Reload Waybar


killall waybar

sleep 0.2

waybar & disown

