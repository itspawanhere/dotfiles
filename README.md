# Dotfiles

My personal macOS development environment — zsh, git, vim, hyper.

## Install

```sh
git clone git@github.com:itspawanhere/dotfiles.git ~/dotfiles
cd ~/dotfiles

# First-time setup: Homebrew, packages, oh-my-zsh, plugins, symlinks
./bootstrap.sh

# Add your machine-local secrets (gitignored)
cp zsh/local.example.zsh zsh/local.zsh && $EDITOR zsh/local.zsh
```

Already have Homebrew and oh-my-zsh? Just symlink:

```sh
./install.sh
```

## Layout

| Path | What |
|------|------|
| `bootstrap.sh` | First-time provisioning (idempotent) |
| `install.sh` | Symlinks dotfiles into `$HOME` |
| `Brewfile` | Homebrew packages and casks |
| `zsh/zshrc` | Shell entrypoint — sources the modules below |
| `zsh/*.zsh` | Per-tool modules (java, python, node, docker, …) |
| `zsh/local.zsh` | Machine-local secrets — **gitignored, never commit** |
| `git/` | gitconfig, global gitignore, commit template |
| `.vimrc`, `.hyper.js` | Editor and terminal config |

## Secrets

Real keys live only in `zsh/local.zsh`, which is gitignored. `zsh/local.example.zsh`
is the tracked template and must contain placeholders only.
