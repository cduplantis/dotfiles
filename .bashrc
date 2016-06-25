alias ll='ls -AlF'
alias vdiff='open /Applications/Xcode.app/Contents/Applications/FileMerge.app/'
source ~/.shell_prompt.sh
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

HISTCONTROL=ignoreboth

# alias tmux="TERM=screen-256color-bce tmux"
if [ "$TERM" == "xterm" ] || [ "$TERM" == "xterm-256color" ]
then
  export HAS_256_color=yes
  alias tmux="tmux -2"
fi

if [ "$TERM" == "screen" ] && [ "$HAS_256_COLORS" == "yes" ]
then
  expot TERM=screen-256color
fi
if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
