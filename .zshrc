# Load antigen
source .antigen/antigen.zsh

# Use oh-my-zsh as default repository
antigen use oh-my-zsh

# Fish-like syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Set default theme
antigen theme af-magic

# Tell antigen that you are done.
antigen apply

# Load local zsh config if available
if [[ -a ~/.zshrc.local ]]
then
  source ~/.zshrc.local
fi
