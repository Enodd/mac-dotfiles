alias ls="ls --color=auto"
alias ll="ls -la"
alias lg="lazygit"
alias n="nvim"
alias va=". .venv/bin/activate"
alias vg="python3 -m venv .venv"
alias cd="z"
alias pyimp="$HOME/.config/zsh/generate_init.sh"

# repeatTask 20 "[command here]"
repeatTask() {
  for i in $(seq 1 $1); do
    eval $2
  done
}

php-change() {
  echo "Unlinking all versions..."
  brew unlink $(brew list | grep php) php
  echo "Linking version: $1"
  brew link php@$1 --overwrite
}

wallpaper() {
  automator -i "${1}" ~/.config/zsh/setWallpaper.workflow
}
