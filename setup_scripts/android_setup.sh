#!/bin/bash
rm -f "$HOME/../usr/etc/motd"
yes | pkg install git fish getconf which jq



if ! command -v starship &> /dev/null; then
    yes | curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir "$HOME/../usr/bin"
fi

chsh -s "$(which fish)"
echo 'starship init fish | source' >> "$HOME/.config/fish/config.fish"