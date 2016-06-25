if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [ -f ~/.local_proxy ]; then
  source ~/.local_proxy
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$1${PATH:+":$PATH"}"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -d $(brew --prefix)/etc/bash_completion.d ]; then
  PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ "'
fi
 
# ALIASES
alias grep='grep --color=auto'
alias reload='source ~/.bash_profile'
alias ls='ls -lasG'

export GIT_PS1_SHOWSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto"
export PATH=$PATH:~/bin/
export CLICOLOR=1

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
