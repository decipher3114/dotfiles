#!/bin/bash
sudo apt install fish git jq
curl -sS https://starship.rs/install.sh | sh
curl -sL "https://github.com/Macchina-CLI/macchina/releases/latest/download/macchina-linux-x86_64" -o "$HOME/.local/bin/macchina" && chmod +x "$HOME/.local/bin/macchina"
chsh -s "$(which fish)"