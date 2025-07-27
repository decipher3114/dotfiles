#!/bin/bash
sudo apt install fish git jq

if ! command -v starship &> /dev/null; then
    yes | curl -sS https://starship.rs/install.sh | sh
fi

chsh -s "$(which fish)"