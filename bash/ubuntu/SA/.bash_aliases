#.bash_aliases file                                                           


#Upadating
#alias update='sudo apt update && sudo apt upgrade'
alias update='sudo nala update && sudo nala upgrade'
#alias sagu='sudo apt update'
alias sagu='sudo nala update'

#Searching Repositories
alias sas='aptitude search'
alias sacs='apt-cache search'

#Installing
#alias sagi='sudo apt install'
alias sagi='sudo nala install'

#Cleaning Headers
alias clean='sudo apt clean && sudo apt autoclean && sudo apt autoremove'

#Configuring
alias cfg-aliases='cd; vim .bash_aliases'
alias cfg-vim='cd; vim .vimrc'
alias cfg-news='cd; vim .newsboat/config'
<<<<<<<< HEAD:.bash/ubuntu/SA/.bash_aliases
alias cfg-mutt='cd; vim .mutt/.muttrc'
========
>>>>>>>> 0e5d3fa7c78be14bf3eba91429abcbbb8f57d9f2:.bash/ubuntu/.bash_aliases

#Listing
alias ll='ls -l --color=auto --group-directories-first'
alias lla='ls -alF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -CF --color=auto --group-directories-first'
<<<<<<<< HEAD:.bash/ubuntu/SA/.bash_aliases

========
>>>>>>>> 0e5d3fa7c78be14bf3eba91429abcbbb8f57d9f2:.bash/ubuntu/.bash_aliases

#Applications/Scripts most scripts added to directory in $PATH
alias vi='vim'
alias gcash_bak='gnuCash_backup.sh'
alias gcash_bak_adv='gnuCash_backup_adv.sh'
alias gcash_restore='gnuCash_restore.sh'
alias gcash_bak_fs='gnuCash_backup_fserver.sh'
alias menu'menu.sh'
alias lg='lazygit'
alias wtr='curl wttr.in'
alias st='curl -s
https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'

# Common Misspellings
alias clera='clear'
alias clara='clear'
alias clar='clear'
alias cls='clear'
alias cd..='cd ..'
alias df='df -h'
alias wget='wget -c'

#tmux
alias tmuxn='tmux new -s'
alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux list-sessions'

#Shortcuts to Directories
alias documents='cd $HOME/Documents/ && ls -l'
alias pics='cd $HOME/Pictures/ && ls -l'
