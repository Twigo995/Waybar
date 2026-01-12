#!/usr/bin/env bash

COUNT_FILE="/var/lib/keystroke-counter/count.json"

if [[ -f "$COUNT_FILE" ]]; then
    COUNT=$(jq '.total_count' "$COUNT_FILE")
else
    COUNT=0
fi

# Only background and foreground are allowed
echo "<span foreground='#ffffff'>$COUNT :3 </span>"
