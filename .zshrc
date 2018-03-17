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

# Set name of the theme to load.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# ----------------------------------------------------------------------------##
# PLUGINS
# ----------------------------------------------------------------------------##

# Autosugestões p/ ZSH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Porta do ZSH da pesquisa da história do shell FISH
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Destaque de sintaxe. É necessário instalar o pacote
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.oh-my-zsh/custom/plugins/encode64/encode64.plugin.zsh

source ~/.dotfiles/lib/zsh-autoenv/autoenv.zsh

test -r ~/.zsh/aliases && source ~/.zsh/aliases

# Syntax coloring# wget https://raw.githubusercontent.com/trapd00r/LS_COLORS/master/LS_COLORS -O ~/.dircolors
eval $(dircolors -b $HOME/.dircolors)

# pywal
# export PATH="${PATH}:${HOME}/.local/bin/"

##----------------------------------------------------------------------------##

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

##----------------------------------------------------------------------------##

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

##----------------------------------------------------------------------------##

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

##----------------------------------------------------------------------------##

source $ZSH/oh-my-zsh.sh

##----------------------------------------------------------------------------##

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

##----------------------------------------------------------------------------##

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

##----------------------------------------------------------------------------##

# Compilation flags
export ARCHFLAGS="-arch x86_64"

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
