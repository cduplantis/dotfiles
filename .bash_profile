if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [ -f ~/.local_proxy ]; then
  source ~/.local_proxy
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$1${PATH:+":$PATH"}"
