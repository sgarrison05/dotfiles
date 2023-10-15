# Custom .zshrc file

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
   #git
    z
    sudo
    last-working-dir
    #web-search
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

## git aliases
alias gcm="git checkout master";
alias gst="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gfo="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gpsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

# Custom zsh aliases
alias cfg-zsh="vim ~/.zshrc"
alias zupdate="source $HOME/.zshrc"
alias md="mkdir"
alias dir='dirs -v | head -10'

export EDITOR='vim'

# Source .bash_aliases file
if [[ -f $HOME/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

neofetch

# Add .local/bin to path
export PATH="$HOME/.local/bin/:$PATH"

