#!/bin/bash


TIMESTAMP=$(date +\%Y-\%m-\%d_\%H-\%M-\%S)
SAVE_PATH=~/Pictures/screenshot_$TIMESTAMP.png

# Check if Pictures directory exists, create it if not
if [ ! -d ~/Pictures ]; then
    echo "Directory ~/Pictures does not exist, creating it..."
    mkdir -p ~/Pictures
fi


# If the user provided an argument, take a region screenshot (using slurp), otherwise take a full-screen screenshot
if [ "$1" == "region" ]; then
    grim -g "$(slurp)" "$SAVE_PATH"
else
    grim "$SAVE_PATH"
fi

echo "Screenshot saved as $SAVE_PATH"

# Check if the screenshot was successfully saved
if [ -f "$SAVE_PATH" ]; then
    # Send success notification
    cat "$SAVE_PATH" | wl-copy
    # swayimg "$SAVE_PATH"
    notify-send "Screenshot" "Screenshot saved to $SAVE_PATH" --icon=camera
else
    # Send failure notification
    notify-send "Screenshot" "Failed to save screenshot." --icon=error
fi
