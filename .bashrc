# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#set -o vi
alias be='bundle exec'
alias vi='nvim'
alias refresh='source ~/'
alias refreshMercury='source ~/Documents/mercury/'

function git_branch() {
    inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
    if [ "$inside_git_repo" ]; then
        echo "($(git branch --show-current)) "
    fi
}
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
GREY="\[$(tput setaf 8)\]"
LIGHTRED="\[$(tput bold)$(tput setaf 1)\]"
LIGHTCYAN="\[$(tput bold)$(tput setaf 6)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
if [ $(id -u) -eq 0 ];
then
    PS1="${RED}\u${RESET}@${GREY}\h: ${RED}\W ${YELLOW}\$(git_branch)${RESET}\$ "
else
    PS1="${GREEN}\u${RESET}@${GREY}\h: ${CYAN}\W ${LIGHTRED}\$(git_branch)${RESET}\$ "
fi

shopt -s checkwinsize

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
