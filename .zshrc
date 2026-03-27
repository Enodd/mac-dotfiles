source $HOME/.config/zsh/shell.sh
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export PATH=$HOME/.local/bin:$PATH

if [ -d "$HOME/.config/work" ]; then
  echo "# Detected work configs. Loading them to current shell"
  source "$HOME/.config/work/work_config.sh"
fi

