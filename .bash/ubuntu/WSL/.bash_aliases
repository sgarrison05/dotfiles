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

#Configuring
alias cfg-aliases='cd; vim .bash_aliases'
alias cfg-vim='cd; vim .vimrc'
alias cfg-news='cd; vim .newsbeuter/config'
alias cfg-mutt='cd; vim .mutt/.muttrc'

#Listing
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -l --color=auto --group-directories-first'
alias lla='ls -alF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -CF --color=auto --group-directories-first'


#Applications/Scripts most scripts added to directory in $PATH
alias vi='vim'
alias menu'menu.sh'
alias lg='lazygit'
alias wtr='curl wttr.in'
alias st='curl -s
https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias myterm='export DISPLAY=:0.0 && terminator&'
alias myexplore='export DISPLAY=:0.0 && thunar&'

#Cleaning Headers
alias clean='sudo apt clean && sudo apt autoclean && sudo apt autoremove'

# Common Misspellings
alias clera='clear'
alias clara='clear'
alias clar='clear'
alias cd..='cd ..'
alias df='df -h'
alias wget='wget -c'

#Shortcuts to Directories
alias documents='cd /home/$USER/Documents/ && ls -l'
alias pics='cd /home/$USER/Pictures/ && ls -l'
alias videos='cd /home/$USER/Videos/ && ls -l'
