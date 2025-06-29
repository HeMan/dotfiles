# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

fpath=($fpath /usr/share/zsh/vendor-completions)
# Path to your oh-my-zsh installation.
#  export ZSH=/home/jimmy/.oh-my-zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# For virtualenvwrapper
export WORKON_HOME=~/proj/python/virtualenvs
export PROJECT_HOME=~/proj/python/projects

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# For ssh-agent-plugin
#zstyle :omz:plugins:ssh-agent agent-forwarding on

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(dotenv git golang mosh screen virtualenv virtualenvwrapper gpg-agent)

export ZPLUG_HOME=~/dotfiles/zplug/
export ZPLUG_LOADFILE=~/dotfiles/packages.zsh
#source $ZSH/oh-my-zsh.sh
[ -f /etc/zsh_command_not_found ] && source /etc/zsh_command_not_found
source ${ZPLUG_HOME}/init.zsh

zplug load

# User configuration
unsetopt share_history
# export MANPATH="/usr/local/man:$MANPATH"


export ANSIBLE_NOCOWS=1
export QT_AUTO_SCREEN_SCALE_FACTOR=1

alias ls='ls -F --hyperlink=auto'
alias gupm='git pull --rebase origin master'
alias rg='ripgrep.rg'

typeset -U path
#
#

setopt auto_cd
cdpath=($HOME/proj)

autoload -Uz ztodo
chpwd() { ztodo }
workon_cwd
