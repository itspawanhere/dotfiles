#!/usr/bin/env bash
#
# First-time machine setup. Idempotent — safe to re-run.
# Installs Homebrew, packages, oh-my-zsh + custom plugins, then symlinks dotfiles.

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Bootstrapping dotfiles from $DOTFILES"

# 1. Homebrew
if ! command -v brew >/dev/null 2>&1; then
    echo "→ Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Packages (Corretto 17 included via Brewfile)
echo "→ brew bundle..."
brew bundle --file="$DOTFILES/Brewfile"

# 3. oh-my-zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    echo "→ Installing oh-my-zsh..."
    RUNZSH=no KEEP_ZSHRC=yes \
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# 4. Custom zsh plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
clone_plugin() {
    local repo="$1" dest="$ZSH_CUSTOM/plugins/$2"
    if [[ ! -d "$dest" ]]; then
        echo "→ Cloning plugin $2..."
        git clone --depth=1 "$repo" "$dest"
    fi
}
clone_plugin https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
clone_plugin https://github.com/zsh-users/zsh-autosuggestions.git     zsh-autosuggestions
clone_plugin https://github.com/onurhanak/zsh-journal.git             zsh-journal

# 5. vim-plug
if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]; then
    echo "→ Installing vim-plug..."
    curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# 6. Symlink dotfiles
echo "→ Linking dotfiles..."
"$DOTFILES/install.sh"

echo
echo "Bootstrap complete. Open a new shell (or: exec zsh)."
echo "Remember: cp zsh/local.example.zsh zsh/local.zsh and fill in your secrets."
