#!/bin/bash
set -euo pipefail

repo_dir=$(pwd)
dot_dir="$repo_dir/dotfiles"

# link <src in repo> -> <dest in $HOME>
link() {
  local src="$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  # If already correct symlink, do nothing
  if [[ -L "$dst" ]] && [[ "$(readlink "$dst")" == "$src" ]]; then
    return 0
  fi

  # Backup any existing non-matching file/link
  if [[ -e "$dst" || -L "$dst" ]]; then
    mv -v "$dst" "${dst}.bak.$(date +%Y%m%d%H%M%S)"
  fi

  ln -s "$src" "$dst"
}

link "$dot_dir/Xmodmap"      "$HOME/.Xmodmap"
link "$dot_dir/xinitrc"      "$HOME/.xinitrc"
link "$dot_dir/bashrc"       "$HOME/.bashrc"
link "$dot_dir/Xresources"   "$HOME/.Xresources"
link "$dot_dir/bash_profile" "$HOME/.bash_profile"

# XDG-ish configs
link "$dot_dir/i3/config"          "$HOME/.config/i3/config"
link "$dot_dir/alacritty.toml"     "$HOME/.config/alacritty/alacritty.toml"

# Vim: pick one location. This keeps your current behavior.
link "$dot_dir/vimrc"              "$HOME/.vimrc"
link "$dot_dir/init.lua"           "$HOME/.config/nvim/init.lua"


link "$dot_dir/ripgreprc" "$HOME/.config/ripgrep/ripgreprc"
