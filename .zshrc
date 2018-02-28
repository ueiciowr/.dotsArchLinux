#                                                      _..._
#                                                   .-'_..._''.
#                             .                   .' .'      '.\
#                           .'|                  / .'
#                          <  |         .-,.--. . '
#                           | |         |  .-. || |
#      .--------.        _  | | .'''-.  | |  | || |
#      |____    |      .' | | |/.'''. \ | |  | |. '
# ,.--.    /   /      .   | /  /    | | | |  '-  \ '.          .
#//    \ .'   /     .'.'| |// |     | | | |       '. `._____.-'/
#\\    //    /___ .'.'.-'  /| |     | | | |         `-.______ /
# `'--'|         |.'   \_.' | '.    | '.|_|                  `
#      |_________|          '---'   '---'
#
#
#				By: @ueiciowr | https://t.me/ueiciowr
#
#
##----------------------------------------------------------------------------##

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

##----------------------------------------------------------------------------##

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

##----------------------------------------------------------------------------##

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# SH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="bullet-train"

##----------------------------------------------------------------------------##

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

##----------------------------------------------------------------------------##

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# ----------------------------------------------------------------------------##
# PLUGINS
# ----------------------------------------------------------------------------##

#source  ~/.zsh/.prompt.zsh

# Autosugestões p/ ZSH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Porta do ZSH da pesquisa da história do shell FISH
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Destaque de sintaxe. É necessário instalar o pacote
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /home/krootkit/.oh-my-zsh/custom/plugins/encode64/encode64.plugin.zsh

source ~/.dotfiles/lib/zsh-autoenv/autoenv.zsh

# pywal
# export PATH="${PATH}:${HOME}/.local/bin/"
#-----------------------------------------------------------------------------##

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

##----------------------------------------------------------------------------##

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

##----------------------------------------------------------------------------##

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

##----------------------------------------------------------------------------##

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

##----------------------------------------------------------------------------##

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

##----------------------------------------------------------------------------##

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

##----------------------------------------------------------------------------##

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

##----------------------------------------------------------------------------##

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

##----------------------------------------------------------------------------##

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

##----------------------------------------------------------------------------##

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

##----------------------------------------------------------------------------##

source $ZSH/oh-my-zsh.sh

##----------------------------------------------------------------------------##

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

##----------------------------------------------------------------------------##

# You may need to manually set your language environment
# export LANG=pt_BR.UTF-8

##----------------------------------------------------------------------------##

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

##----------------------------------------------------------------------------##

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

##----------------------------------------------------------------------------##

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# ----------------------------------------------------------------------------##
# SYNTAX-HIGHLIGHTING
# ----------------------------------------------------------------------------##

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt nohashdirs
setopt completealiases
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# ----------------------------------------------------------------------------##
# ALIASES
# ----------------------------------------------------------------------------##

### Alias InfoTest

alias geo="sudo nmap --traceroute --script traceroute-geolocation.nse -p 80"
alias nmapemail="sudo nmap -Pn -p80 --script http-google-email"
alias nmapopen="nmap --open"
alias nmaplf="nmap --iflist"
alias nmap_slow="nmap -sS -v -T1"
alias nmap_fin="nmap -sF -v"
alias nmap_full="nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v"
alias nmap_check_for_firewall="sudo nmap -sA -p1-65535 -v -T4"
alias nmap_ping_through_firewall="nmap -PS -PA"
alias nmap_fast="nmap -F -T5 --version-light --top-ports 300"
alias nmap_detect_versions="sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn"
alias nmap_check_for_vulns="sudo nmap -d --script=vulscan"
alias nmap_full_udp="nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 "
alias nmap_traceroute="nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute "
alias nmap_full_with_scripts="sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all " 
alias nmap_web_safe_osscan="sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy "

### Alias Pacman and Trizen

alias pac="sudo pacman -S"
alias trii='trizen -S'
alias trirns='trizen -Rns'
alias trir='trizen -R'
alias trirdd='trizen -Rdd'
alias pacrdd='sudo pacman -Rdd'
alias pacrns='sudo pacman -Rns'
alias pacr='sudo pacman -R'
alias syu="sudo pacman -Syu --noconfirm"
alias optim="sudo pacman -Sc && sudo pacman-optimize"
alias pch="pacman -Sl | cut -d' ' -f2 | grep"
alias clean="sudo rm -rf /var/cache/pacman/pkg/*.*"

### Extras

alias briu="xrandr --output eDP-1 --brightness 0.9"
alias brid="xrandr --output eDP-1 --brightness 0.6"
alias y3='archey3 -c cyan'
alias allred='alsi -l --bold=yellow'
alias c="clear"
alias q="exit"
alias fcf='fc-list | grep -i'
alias pweb='lsof -i -n -P'
