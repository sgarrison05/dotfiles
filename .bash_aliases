# ____   ____ _   _ _ _  _    ___  _  _   _   _____ ____  ____   ____ 
#/ ___| / ___| | | / | || |  / _ \| || | | | |_   _/ ___||  _ \ / ___|
#\___ \| |  _| | | | | || |_| | | | || |_| |   | | \___ \| |_) | |    
# ___) | |_| | |_| | |__   _| |_| |__   _| |___| |  ___) |  __/| |___ 
#|____/ \____|\___/|_|  |_|  \___/   |_| |_____|_| |____/|_|    \____|

#.bash_aliases file                                                           


#Upadating
alias update='sudo apt-get update && sudo apt-get upgrade'
alias sagu='sudo apt-get update'

#Searching Repositories
alias sas='aptitude search'
alias sacs='apt-cache search'

#Installing
alias sagi='sudo apt-get install'

#Configuring
alias cfg-aliases='cd; vim .bash_aliases'

#Listing
alias ll='ls -l --color=auto'
alias lla='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

#Applications/Scripts
alias vi='vim'
alias pygmynote='cd ~/Documents/Notes/pygmynote/;./pygmynote.py;cd'
alias gcash_bak='~/Programming/BASH/gCash/gnuCash_backup.sh'
alias gcash_bak_adv='~/Programming/BASH/gCash/gnuCash_backup_adv.sh'
alias gcash_restore='~/Programming/BASH/gCash/gnuCash_restore.sh'
alias gcash_bak_fs='~/Programming/BASH/gCash/gnuCash_backup_fserver.sh'
alias menu'~/Programming/BASH/Menu/menu.sh'

#Cleaning Headers
alias clean='sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove'

#Screensaver
alias lock='xscreensaver-command -l'
alias clera='clear'

#Shortcuts to Directories
alias dropbox='cd ~/Dropbox/ && ls -l'
alias documents='cd /home/sgarrison/Documents/ && ls -l'
alias pics='cd /home/sgarrison/Pictures/ && ls -l'
alias videos='cd /home/sgarrison/Videos/ && ls -l'
