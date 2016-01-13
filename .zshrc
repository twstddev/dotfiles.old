# Load antigen
source .antigen/antigen.zsh

# Use oh-my-zsh as default repository
antigen use oh-my-zsh

# Tell antigen that you are done.
antigen apply

# Load local zsh config if available
if [[ -a ~/.zshrc.local ]]
then
  source ~/.zshrc.local
fi
