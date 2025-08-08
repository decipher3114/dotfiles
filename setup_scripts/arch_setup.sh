#!/bin/bash

PACMAN_CONF="/etc/pacman.conf"
TARGET_DOWNLOADS=10

sudo sed -i \
-e '/^#\[extra\]/{s/^#//; n; s/^#//}' \
-e "s/^#\?ParallelDownloads = .*/ParallelDownloads = $TARGET_DOWNLOADS/" \
-e '/\[options\]/,/^\[/ {
    s/^#\(Color\|CheckSpace\|VerbosePkgLists\|ILoveCandy\)/\1/
}' "$PACMAN_CONF"

if ! grep -q "^ParallelDownloads" "$PACMAN_CONF"; then
    sudo sed -i "/\[options\]/a ParallelDownloads = $TARGET_DOWNLOADS" "$PACMAN_CONF"
fi

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm \
    base-devel \
    man-db \
    which \
    fish \
    starship \
    git

FISH_PATH="$(which fish)"
if ! grep -Fxq "$FISH_PATH" /etc/shells; then
    echo "$FISH_PATH" | sudo tee -a /etc/shells >/dev/null
fi

chsh -s "$FISH_PATH"

