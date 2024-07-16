#!/bin/bash
rm "$HOME/../usr/etc/motd"
pkg install git fish getconf jq macchina -y
chsh -s "$(which fish)"
curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir /data/data/com.termux/files/usr/bin