#!/usr/bin/env bash
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
BASE_DIR=$(dirname $SCRIPT_DIR)

echo script dir: $SCRIPT_DIR
echo base dir: $BASE_DIR

ln -snf "$BASE_DIR/.gitconfig" "$HOME/.gitconfig"

for file in $BASE_DIR/.??*; do
    [[ $(basename $file) == ".bin" ]] && continue
    [[ $(basename $file) == ".git" ]] && continue
    [[ $(basename $file) == ".gitignore" ]] && continue
    echo Creating symbolic link from $file to "$HOME/$(basename $file)"
    ln -snf "$file" $HOME/$(basename "$file")
done
