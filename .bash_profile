source ~/.bash-powerline.sh

# General aliasing
alias ls='exa -alh --git -s=type'
eval $(thefuck --alias)
alias passwordgen='openssl rand -base64 100 | tr -dc A-Za-z0-9 | head -c32'

# Git aliasing
function gitcl {
  git clone git@github.com:${1}/${2}.git
}

function gitdelete {
  git branch -D ${1}
  git branch -d --remotes origin/${1}
}

function gitup {
  git checkout master
  git pull
}

# Setup terminal tab title
function title {
  if [ "$1" ]
  then
    unset PROMPT_COMMAND
    echo -ne "\033]0;${*}\007"
  else
    export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
  fi
}

# Terraform aliasing
alias tfplan='terraform plan'
alias tfapply='terraform apply'
alias tfstate='terraform state'
#alias tfinit='./init.sh'
alias tfinit='terraform init'
alias tfr='terraform refresh'

# Terraform format
tffmt()
{
  find .. -name "*tf" | xargs -I{} terraform fmt
}

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="/usr/local/bin/openssl:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
#export AWS_PROFILE=production
