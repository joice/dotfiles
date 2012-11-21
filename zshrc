ZSH=$HOME/.oh-my-zsh

ZSH_THEME="brennovich"
DISABLE_LS_COLORS="true"

alias g="git"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias refresh="source ~/.zshrc"
alias fresh_schema="rm db/schema.rb && rake db:drop:all && rake db:create && rake db:migrate && rake db:test:prepare"
alias box="cd ~/Code/brotodevbox && vagrant up && vagrant ssh"
alias rbp="rails_best_practices -f html . --output-file public/rbp.html"
alias sp="spin push"
alias ss="spin serve"
alias ks="kicker -c -s -q -l 0.1 -r rails -b 'spin push'"
alias dev_env="bundle exec guard"
alias be="bundle exec"
alias denv="killall ruby &>/dev/null & kicker -c -s -q -l 0.1 -r rails -b 'spin push' & ss & rails s"
alias spa="sp rspec spec"

# plugins=(rbenv brew terminalapp osx)
plugins=(terminalapp)

# automatically enter directories without cd
setopt auto_cd

source $ZSH/oh-my-zsh.sh

export EDITOR="mvim"

PATH=/usr/local/bin:$PATH:/usr/local/share/python:/usr/local/share/npm/bin
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
