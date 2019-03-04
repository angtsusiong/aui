export TERM="xterm-256color"
export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GOPATH=$HOME/go
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=~/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/lib
export PATH=$PATH:$HOME/.cargo/bin
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=3
export FZF_BASE=/usr/bin/fzf
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_left"
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=3
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=7
# POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."

POWERLEVEL9K_RBENV_ALWAYS="true"
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW="true"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir_writable
  dir
  newline
  node_version
  rbenv
  newline
  os_icon
  vcs
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="false"
HYPHEN_INSENSITIVE="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="false"
# HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM=$ZSH/custom

plugins=(
  archlinux
  autojump
  bundler
  cp
  colored-man-page
  colorize
  copydir
  copyfile
  dash
  docker
  docker-machine
  docker-compose
  extract
  fzf
  gpg-agent
  git-flow-avh-completion
  git
  gitignore
  git-flow-avh
  git-remote-branch
  gitfast
  gem
  helm
  httpie
  history
  history-substring-search
  kops
  kubectl
  node
  npm
  rails
  rbenv
  ruby
  ssh-agent
  sudo
  wd
  web-search
  yarn
  zsh-autosuggestion
  zsh-better-npm-completion
  zsh-syntax-highlighting
  zsh-completions
  zsh-nvm
)

autoload -U compinit && compinit

[[ -f $ZSH/custom.zshrc ]] && source $ZSH/custom.zshrc

source $ZSH/oh-my-zsh.sh

alias zrc="vim ~/.zshrc"
alias i3rc="vim ~/.config/i3/config"
alias wk="cd ~/Documents/Spreeeed"
alias dbd="bin/rails db:create db:migrate db:seed RAILS_ENV=development"
alias dbt="bin/rails db:create db:migrate db:seed RAILS_ENV=test"
alias rdb="bin/rake db:drop db:create db:migrate db:seed && bin/rake db:migrate db:seed RET"
alias mysqls="systemctl start mariadb.service"
alias mysqlq="systemctl stop mariadb.service"
alias dbs="systemctl start postgresql.service"
alias dps="docker ps"
alias ims="docker images"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dkf="vim Dockerfile"
alias dkc="vim docker-compose.yml"
alias zzz="source ~/.zshrc"
alias toshiba="udisksctl mount -b /dev/sdb1"
alias ks="kubectl"
alias vi="vim"
alias gemf="vi Gemfile"
alias sshus="ssh root@47.74.62.181"
alias sshtc="ssh root@47.74.0.102"
alias sshyt="ssh root@47.245.0.253"
alias sshhub="ssh root@47.74.12.196"

# eval "$(hub alias -s)"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
autoload -U compinit && compinit

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -F /usr/local/bin/aliyun aliyun
