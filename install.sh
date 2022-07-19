#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh [TARGET_DIRECTORY]"
    echo "  Note: TARGET_DIRECTORY must be an existing directory."
    exit 1
fi

TARGET_DIR="${1%/}"
DOTFILES_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

for file in `find .config -type f`; do
    echo "Creating symlink $TARGET_DIR/$file..."
    mkdir -p "$TARGET_DIR/$(dirname $file)"
    ln -sfi "$DOTFILES_DIR/$file" "$TARGET_DIR/$file"    
done
