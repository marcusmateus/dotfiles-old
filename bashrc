source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/prompt
source ~/.bash/paths
source ~/.bash/config

# Use .bashrc.local for settings specific to one system
# Note: Should be avoided whenever possible
if [ -f ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi
