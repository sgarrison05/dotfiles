#.bash_aliases file                                                           


#Upadating
alias update='sudo apt update && sudo apt upgrade'
alias sagu='sudo apt update'

#Searching Repositories
alias sas='aptitude search'
alias sacs='apt-cache search'

#Installing
alias sagi='sudo apt install'

#Cleaning Headers
alias clean='sudo apt clean && sudo apt autoclean && sudo apt autoremove'

#Configuring
alias cfg-aliases='cd; vim .bash_aliases'
alias cfg-vim='cd; vim .vimrc'
#alias cfg-news='cd; vim .newsbeuter/config'

#Listing
alias ll='ls -l --color=auto'
alias lla='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

#Applications/Scripts most scripts added to directory in $PATH
alias vi='vim'
alias pygmynote='cd ~/Documents/Notes/pygmynote/;./pygmynote.py;cd'
alias gcash_bak='gnuCash_backup.sh'
alias gcash_bak_adv='gnuCash_backup_adv.sh'
alias gcash_restore='gnuCash_restore.sh'
alias gcash_bak_fs='gnuCash_backup_fserver.sh'
alias menu'menu.sh'

# Common Misspellings
alias clera='clear'
alias clara='clear'
alias clar='clear'
alias cls='clear'
alias cd..='cd ..'

#Shortcuts to Directories
alias documents='cd /home/sgarrison/Documents/ && ls -l'
alias pics='cd /home/sgarrison/Pictures/ && ls -l'
