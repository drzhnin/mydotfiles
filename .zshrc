# Path to your oh-my-zsh installation.
export ZSH=/Users/andrewdruzinin/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepanda"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew colorize osx ruby rake)

# User configuration

export PATH="$PATH:/usr/local/pcre/bin:/Users/octopanda/.rvm/gems/ruby-2.2.2/bin:/Users/octopanda/.rvm/gems/ruby-2.2.2@global/bin:/Users/octopanda/.rvm/rubies/ruby-2.2.2/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=/Users/andrewdruzinin/Work/GoLangProjects
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c="clear"
alias z="zeus"
alias b="bundle"
alias bi="b install"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias bec="be cucumber"
alias beu="b exec uniqfrd"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
alias ber="b exec rake"
alias bek="be knife"
alias create-repo="touch .gitignore && git add .gitignore && git commit -m 'Created repo' && git checkout -b develop"
alias df='df -h'
alias du='du -sh'
alias g="git"
alias commit="git add -A && git commit -am $1"
alias gaa="git add -A"
alias gci="git commit"
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gpom="git pull origin master"
alias gpod="git pull origin develop"
alias gm="git merge --no-ff"
alias gg="gitk --all &"
alias grep='egrep --color=auto'
alias gst="g st -sb"
alias l="ls -lahG"
alias m="mate ."
alias p="ping"
alias py="ping -c 4 ya.ru"
alias pwc="pwd | pbcopy"
alias r="rake"
alias rpry="pry -r ./config/environment"
alias cdp="cd ~/Projects"
alias mysshkey="pbcopy < ~/.ssh/id_rsa.pub"
alias vimgo="vim -u ~/.vimrc.go"
alias tma='tmux attach -d -t'
alias git-tmux='tmux new -s $(basename $(pwd))'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR='vim'

# Base16 Shell
BASE16_SCHEME="tomorrow"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL
