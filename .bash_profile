[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export FIGNORE="$FIGNORE:.DS_Store"
export PATH="$PATH:$HOME/.local/bin"
export VISUAL=nvim
export EDITOR=nvim
export CDPATH=".:$HOME:$HOME/Documents/mercury"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS --select-1 --exit-0"
export FZF_COMPLETION_OPTS="$FZF_CTRL_T_OPTS"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
function tab_title {
  echo -n -e "\033]0;${PWD##*/}\007"
}

export PROMPT_COMMAND="tab_title"

export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(rbenv init -)"

eval "$(nodenv init -)"

eval "$(direnv hook bash)"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

set -o vi

set GIT_PROMPT_THEME=Single_line

source ~/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

