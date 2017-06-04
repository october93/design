#!/bin/sh

# Check for git-lfs
command -v git-lfs >/dev/null 2>&1 || { echo >&2 "\nThis repository is configured for Git LFS but 'git-lfs' was not found on your path. If you no longer wish to use Git LFS, remove this hook by deleting .git/hooks/pre-push.\n"; exit 2; }
git lfs pre-push "$@"

# Update DropBox
echo "Updating DropBox..."
rsync -avrhtmWC --update --delete --exclude=".*" --exclude="*.sh" --exclude="README.md" . ~/DropBox/Everyone/"Design (read-only)"/
echo "This directory is read-only, and is updated via the october/design git repository. Each time a change is pushed to origin, those changes manifest here." > ~/DropBox/Everyone/"Design (read-only)"/README.txt
