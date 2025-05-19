#!/bin/bash
set -e

echo "Updating package list and installing packages..."
sudo apt-get update -y >/dev/null
sudo apt-get install -y \
  bat \
  curl \
  fd-find \
  fish \
  hub \
  ripgrep

if [ ! -d "$HOME/.dotfiles" ]; then
  echo "Setting up dotfiles..."

  git clone https://github.com/flrnd/dotfiles ~/.dotfiles

  cp -r ~/.dotfiles/fish ~/.config/
fi

if [ ! -d "$HOME/.forgit" ]; then
  echo "Installing forgit..."

  git clone https://github.com/wfxr/forgit.git ~/.forgit
fi

if [ ! -d "$HOME/.fzf" ]; then
  echo "Installing fzf..."

  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all
fi

if ! command -v pnpm &>/dev/null; then
  echo "Installing pnpm..."

  npm install -g pnpm
fi

echo "✅ Setup complete."
