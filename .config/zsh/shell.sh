source "$HOME/.config/zsh/aliases.sh"
source "$HOME/.config/zsh/scripts.sh"

export EDITOR=nvim

export NODE_OPTIONS=--max_old_space_size=4096
eval "$(starship init zsh)"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/enodd/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PYENV_ROOT="$HOME/.pyenv"

eval "$(pyenv init -)"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/enodd/.bun/_bun" ] && source "/Users/enodd/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
