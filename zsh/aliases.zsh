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
alias cdc="cd ~/Documents/codes"
alias cdt="cd ~/Documents/projects/taegis"
alias cdtp="cd ~/Documents/projects/taegis/platform"
alias cdta="cd ~/Documents/projects/taegis/apps"
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

alias td='taegis-duck'
alias duck='mallard'
#alias docker=podman

#alias ask='python3.11 $HOME/Documents/codes/easy-modular-scripts/ask-app/ask.py'
#alias runit='bash $HOME/Documents/codes/easy-modular-scripts/ask-app/runit.sh'

alias opal-prod="opal iam-roles:start --id 294d5646-6a40-4ae5-bf8c-6c86d4e402bc"
alias opal-brazil="opal iam-roles:start --id c56f37ef-4dbc-4aaa-825d-63bfd3da9c72"
alias opal-canada="opal iam-roles:start --id b9ad50a2-1fa2-49c5-b1e5-416bbea7e31a"
alias opal-mumbai="opal iam-roles:start --id da8f7ca4-a905-4fb4-95b6-54c20a0009ee"
alias opal-sydney="opal iam-roles:start --id b54826a2-1662-4fc7-8add-e1ba7f7c149d"
alias opal-japan="opal iam-roles:start --id 86a37b71-9de4-4e8d-b6a3-b8ff8f026aaf"
alias opal-dubai="opal iam-roles:start --id 4e87a250-c04a-4c84-8dcd-00a01bf1f41c"

alias opal-dev="opal iam-roles:start --id e5c912ac-2d74-4b2e-940f-cc037546845a"
alias opal-dev-2="opal iam-roles:start --id 369ee4e1-837c-40fe-8ffa-d06de4d6231a"

alias opal-qa="opal iam-roles:start --id a346f2fb-1e24-442c-8659-cfd6da765dc4"
alias opal-qa-2="opal iam-roles:start --id 4f8733a1-b848-4c88-9aba-7578a3a36031"

# >>> mallard opal aliases >>>
# Managed by Mallard: Opal AWS account aliases
alias opal-hub000dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 95195be1-96dd-4168-b689-92aca82af05b --profileName hub000dub)'
alias opal-stn000dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 79195ccf-90e3-4e73-975c-a6d1bb0aaaa2 --profileName stn000dub)'
alias opal-stn000cmh='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 3f468053-8f93-4b88-bf3b-a30436107f66 --profileName stn000cmh)'
alias opal-stn000iad='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 1c5769ce-1c8a-479f-ae3d-4ac93fee2019 --profileName stn000iad)'
alias opal-hub010dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id e5c912ac-2d74-4b2e-940f-cc037546845a --profileName hub010dub)'
alias opal-stn010dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 231db2db-396b-4397-a01c-048d70647fe0 --profileName stn010dub)'
alias opal-stn010iad='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 8514a9af-b492-46c0-a92a-702ad4df5566 --profileName stn010iad)'
alias opal-stn010yul='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 369ee4e1-837c-40fe-8ffa-d06de4d6231a --profileName stn010yul)'
alias opal-hub030dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id b5f7ecc7-e935-4c2e-ba19-0b74da5c3a32 --profileName hub030dub)'
alias opal-stn030dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id ebc7a87c-6fb4-4c3b-97ee-f0e786cc5f72 --profileName stn030dub)'
alias opal-stn030iad='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id af28f039-7e29-4555-9880-17d292cb1d9b --profileName stn030iad)'
alias opal-stn030bom='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 3f758e6f-7da9-4fc5-9d77-07041672bb97 --profileName stn030bom)'
alias opal-stn030pdx='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id ebc7a87c-6fb4-4c3b-97ee-f0e786cc5f72 --profileName stn030pdx)'
alias opal-hub100dub='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 294d5646-6a40-4ae5-bf8c-6c86d4e402bc --profileName hub100dub)'
alias opal-stn100hnd='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 86a37b71-9de4-4e8d-b6a3-b8ff8f026aaf --profileName stn100hnd)'
alias opal-stn100yul='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id b9ad50a2-1fa2-49c5-b1e5-416bbea7e31a --profileName stn100yul)'
alias opal-stn100syd='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id b54826a2-1662-4fc7-8add-e1ba7f7c149d --profileName stn100syd)'
alias opal-stn100bom='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id da8f7ca4-a905-4fb4-95b6-54c20a0009ee --profileName stn100bom)'
alias opal-stn100gru='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id c56f37ef-4dbc-4aaa-825d-63bfd3da9c72 --profileName stn100gru)'
alias opal-stn100dxb='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 9bf3abcb-4ca1-4ee5-9089-870661fa3c07 --profileName stn100dxb)'
alias opal-stn100iad='(AWS_DEFAULT_PROFILE=opal opal iam-roles:start --id 592cf0bc-08f0-4aa0-bd29-e593b733f634 --profileName stn100iad)'
# <<< mallard opal aliases <<<
