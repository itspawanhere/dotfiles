#!/usr/bin/env bash

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link_file() {
    local source="$1"
    local destination="$2"

    if [[ ! -e "$source" ]]; then
        printf "⚠ skip (missing): %s\n" "$source"
        return
    fi

    printf "→ %s\n" "$destination"
    ln -sf "$source" "$destination"
}

echo "Installing dotfiles..."

# Shell
link_file "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"

# Git
link_file "$DOTFILES/git/gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES/git/gitignore_global" "$HOME/.gitignore_global"
link_file "$DOTFILES/git/gitmessage.txt" "$HOME/.gitmessage.txt"

# Editors / terminal
link_file "$DOTFILES/.vimrc" "$HOME/.vimrc"
link_file "$DOTFILES/.hyper.js" "$HOME/.hyper.js"

echo
echo "✅ Installation complete."
echo "Remember: cp zsh/local.example.zsh zsh/local.zsh and add your secrets."
