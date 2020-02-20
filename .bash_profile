[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export FIGNORE="$FIGNORE:.DS_Store"
export PATH="$PATH:$HOME/.local/bin"
export VISUAL=nvim
export EDITOR=nvim
export CDPATH=".:$HOME:$HOME/Documents/mercury"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(rbenv init -)"

eval "$(nodenv init -)"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

set -o vi

source ~/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

