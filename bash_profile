# Tell vim this is a bash file
# vim: set filetype=sh :

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
