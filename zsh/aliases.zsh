# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias reload="source ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias gpl="git pull"
alias gps="git push"
alias gcd="git checkout develop && git pull"
alias gscd="git stash && git checkout develop && git pull"
alias gcm="git checkout main && git pull"
alias gcr="git checkout master && git pull"
alias gscm="git stash && git checkout main && git pull"
alias gcp="git cherry-pick"
alias cdp="cd ~/Documents/projects"
alias cdpe="cd ~/Documents/personal"
alias cdb="cd ~/Documents/beyondctx"
alias cdc="cd ~/Documents/codes"
alias venv="source ~/.venv/bin/activate"
alias gti="git"
alias glp="git-lazypush"
alias ghd="git-hard-delete"
alias gstash="git stash"
alias gs="git status"
alias gst="git status"
alias gco="git checkout"
alias lg="lazygit"
alias python='python3'
alias 3='python3'
alias py='python3'

alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size'
alias lt='eza -al --sort=modified'

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
autoload zcalc
alias calc='zcalc'
alias gem='gemini'
alias cop='copilot'
alias remote='git_url=$(git remote get-url origin) && formatted_url=$(echo $git_url | sed "s/\.git$//" | sed "s/git@github.com:/https:\/\/github.com\//") && open "$formatted_url"'

#alias docker=podman

#alias ask='python3.11 $HOME/Documents/codes/easy-modular-scripts/ask-app/ask.py'
#alias runit='bash $HOME/Documents/codes/easy-modular-scripts/ask-app/runit.sh'

