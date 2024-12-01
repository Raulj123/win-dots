#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
eval "$(starship init bash)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

# Alias stuff 

alias p='cd /mnt/c/Users/rjarquinvaldez/Projects'
alias b='vim ~/.bashrc'
alias neo='neofetch'
alias ls='ls -a --color=auto'
alias st='git status'
alias lg='git log --stat'
alias gcm='git commit -s -m'
alias push='git push'
alias add="git add"
alias c='clear'
#rice
alias sb='source ~/.bashrc'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

