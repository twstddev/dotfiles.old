# Load antigen
source .antigen/antigen.zsh

# Use oh-my-zsh as default repository
antigen use oh-my-zsh

# Add colors to man pages
antigen bundle colored-man-pages
# Add bower support
antigen bundle bower
# Add ruby bundler support
antigen bundle bundler
# Gem completion plugin
antigen bundle gem
# Add aliases and functions for git
antigen bundle git
# Keeps track of the last used directory and automatically jumps to it for new shells
antigen bundle last-working-dir
# Add maven aliases and completion
antigen bundle mvn
# Add npm aliases and completion
antigen bundle npm
# Enhanced tmux support
antigen bundle tmux
# Enhanced tmuxinator support
antigen bundle tmuxinator
# Add vagrant completion
antigen bundle vagrant
# Add vi like behaviour
antigen bundle vi-mode

# Fish-like syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
# Add plugin that helps remembering aliases
antigen bundle djui/alias-tips

# Set default theme
antigen theme af-magic

# Tell antigen that you are done.
antigen apply

# Load local zsh config if available
if [[ -a ~/.zshrc.local ]]
then
  source ~/.zshrc.local
fi
