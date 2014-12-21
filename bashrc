GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

# Colors
color_off='\e[0m' # Text Reset
black='\e[0;30m' # Black
bright_black='\e[1;30m' # Black
red='\e[0;31m' # Red
green='\e[0;32m' # Green
yellow='\e[0;33m' # Yellow
blue='\e[0;34m' # Blue
purple='\e[0;35m' # Purple
cyan='\e[0;36m' # Cyan
white='\e[0;37m' # White

# Prompt with ruby version
# rbenv version | sed -e 's/ .*//'
function rbenv_ps1 () {
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

function parse_git_branch {
  git_branch=`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ "$git_branch" ]; then
    printf "${color_off}on ${red}$git_branch"
  fi
}

# Tell things to be colourful
export CLICOLOR=1
export GREP_COLOR="1;31"
export GREP_OPTIONS='--color=auto'
export LESS="-R"
export TERM=xterm-256color

# Oversized history
export HISTSIZE=5000

# Simple PS1
PS1="\[${color_off}\]using \[${blue}\]\$(rbenv_ps1) \[${color_off}\]at\[${green}\] \\W \$(parse_git_branch) \n\\[${red}\]\$\[${color_off}\] "

# Overwriting PATH for better homebrew compatibility
PATH=$HOME/.homebrew/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Go \o/
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

# Default Editor
export EDITOR=vim

set -o vi

# Call Aliases
source ~/.aliases

# rbenv Configurations
source ~/.rbenvrc

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Autostart tmux
if [[ $TMUX ]]; then
  tmux -u new-session -s default -A
fi
