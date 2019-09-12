#!/bin/sh

# Update DropBox
echo "Updating DropBox..."
rsync -avrhtmWC --update --delete --exclude=".*" --exclude="*.sh" --exclude="README.md" . ~/"DropBox (October)"/Everyone/"Design (read-only)"/
echo "This directory is read-only, and is updated via the october/design git repository. Each time a change is pushed to origin, those changes manifest here." > ~/DropBox/Everyone/"Design (read-only)"/README.txt
