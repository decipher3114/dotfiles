#!/bin/bash
rm "$HOME/../usr/etc/motd"
pkg install git fish getconf which jq -y
chsh -s fish
which starship || curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir /data/data/com.termux/files/usr/bin