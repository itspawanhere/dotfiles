[[ -d "$HOME/.grok" ]] || return

export PATH="$HOME/.grok/bin:$PATH"
fpath=(~/.grok/completions/zsh $fpath)
