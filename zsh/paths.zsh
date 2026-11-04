path_prepend() {
    [[ -d "$1" ]] || return
    path=("$1" $path)
}

path_append() {
    [[ -d "$1" ]] || return
    path+=("$1")
}

path_prepend "$DOTFILES/bin/git"

path_prepend "$SPARK_HOME/bin"

path_prepend "$M2_HOME/bin"

path_prepend "/opt/homebrew/opt/mysql-client/bin"

path_prepend "$PYENV_ROOT/bin"

path_append "$HOME/go/bin"

path_append "$HOME/.local/bin"

path_append "$HOME/Documents/personal/flutter-sdk/flutter/bin"

path_append "$HOME/Documents/personal/flutter-sdk/flutter"

path_append "$HOME/.lmstudio/bin"
