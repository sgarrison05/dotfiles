# Arch .bash_aliases file

# Updating
alias update='sudo pacman -Syu'
alias pupdate='sudo pacman -Sy'

# Installing
alias pinstall='sudo pacman -S'

# Removing
alias premove='sudo pacman -Rns'

# Searching
alias prsearch='sudo pacman -Ss'
alias psearch='sudo pacman -Q'
alias pisearch='sudo pacman -Qe'
alias pacid='sudo pacman -Qi'

# Configuring
alias cfg-aliases='cd; vim .bash_aliases'
alias cfg-vim='cd; vim .vimrc'
alias cfg-rofi='cd; vim .config/rofi/config.conf'
alias cfg-i3='cd; vim .config/i3/config'
alias cfg-alacritty='cd; vim .config/alacritty/alacritty.yml'

# Listing
alias ll='ls -l --color=auto --group-directories-first'
alias lla='ls -alF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -CF --color=auto --group-directories-first'
alias ls='ls -h --color=auto --group-directories-first'

# Applications
alias vi='vim'
alias wget="wget -c"
alias free="free -mt"

# Cleaning
alias pclean='sudo pacman -Sc'

# Common Misspellings
alias clera='clear'
alias clar='clear'
alias clara='clear'
alias cd..='cd ..'

# Shortcuts to Documents
alias documents='cd /home/$USER/Documents/ && ls -l'
alias pics='cd $HOME/pictures/ && ls -l'
alias Dev='cd $HOME/Dev/ && ls -l'
alias notes='cd $HOME/Notes/ && ls -l'

# Utilities
alias wtr='curl wttr.in' # local weather in cli
alias st='curl -s https://raw.githubusertontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias cheatdb='echo curl https://cheat.sh/'
alias pwrd='poweroff'

