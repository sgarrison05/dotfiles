# SGMP Custom ZSH Config File

# Add .loca/bin to path
export PATH=$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# My ZSH Theme
ZSH_THEME="agnoster"

plugins=(
    #git
    macos
    last-working-dir
    web-search
    sudo
    z
)

source $ZSH/oh-my-zsh.sh
source /usr/local/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History Control
export HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS 
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS

export HISTSIZE=2000
export HISTFILESIZE=4000
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE=clear:ls:la:ll
export HISTTIMEFORMAT="%B %D %l:%M %p"

# Make vim system editor
export EDITOR='vim'

# Personal Aliases
if [[ -f .bash_aliases ]]; then
    source .bash_aliases
fi

# git aliases
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gsu="git gpush --set-upstream origin "

alias md="mkdir -p"
alias sshdir="cd $HOME/.ssh"
alias dirs='dirs -v | head -10'
alias topten="history | commands | sort -rn | head"

alias cfg-zsh="vim ~/.zshrc"
alias zupdate="source $HOME/.zshrc"
