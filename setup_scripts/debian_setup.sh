#!/bin/bash
sudo apt install fish git jq
which starship || curl -sS https://starship.rs/install.sh | sh
chsh -s "$(which fish)"