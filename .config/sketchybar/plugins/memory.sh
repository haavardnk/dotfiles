#!/bin/bash

# Get the total memory (in MB)
TOTAL_MEM=$(sysctl -n hw.memsize)
TOTAL_MEM_MB=$((TOTAL_MEM / 1024 / 1024))

# Get the used memory (in pages)
USED_PAGES=$(vm_stat | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
FREE_PAGES=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')

# Each page is 4096 bytes
PAGE_SIZE=4096
USED_MEM=$((USED_PAGES * PAGE_SIZE / 1024 / 1024))
FREE_MEM=$((FREE_PAGES * PAGE_SIZE / 1024 / 1024))

# Calculate memory usage percentage
USED_PERCENT=$((USED_MEM * 100 / TOTAL_MEM_MB))

# Update the sketchybar label
sketchybar --set $NAME label="$USED_PERCENT%"

