### Added by Zplugin's installer
source '/home/twstd/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin snippet OMZ::lib/functions.zsh
zplugin snippet OMZ::lib/history.zsh

zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/directories.zsh

zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/completion.zsh

zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/grep.zsh

zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/misc.zsh

zplugin ice wait"0" lucid blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait"1" lucid atload"_zsh_autosuggest_start; bindkey '^e' autosuggest-accept"
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait"0" lucid
# zplugin light zsh-users/zsh-syntax-highlighting
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait"1" lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh

#zplugin ice wait"1"
#zplugin snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh

zplugin ice wait"1" lucid
zplugin light djui/alias-tips

#zplugin light denysdovhan/spaceship-prompt
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

zplugin ice atclone"dircolors -b LS_COLORS > clrs.zsh" atpull'%atclone' pick"clrs.zsh"
zplugin light trapd00r/LS_COLORS

# configure autosuggest
#bindkey '^ ' autosuggest-accept

# Disable beeping
unsetopt beep

# use vim mode
bindkey -v

# configure ls
# Find the option for using colors in ls, depending on the version
if [[ "$OSTYPE" == darwin* ]]; then
  # this is a good alias, it works by default just using $LSCOLORS
  ls -G . &>/dev/null && alias ls='ls -G'

  # only use coreutils ls if there is a dircolors customization present ($LS_COLORS or .dircolors file)
  # otherwise, gls will use the default color scheme which is ugly af
  [[ -n "$LS_COLORS" || -f "$HOME/.dircolors" ]] && gls --color -d . &>/dev/null && alias ls='gls --color=tty'
else
  # For GNU ls, we use the default ls color theme. They can later be overwritten by themes.
  if [[ -z "$LS_COLORS" ]]; then
    (( $+commands[dircolors] )) && eval "$(dircolors -b)"
  fi

  ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }

  # Take advantage of $LS_COLORS for completion as well.
  zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

setopt auto_cd
setopt multios
setopt prompt_subst

# configure bindings
bindkey '^R' history-incremental-search-backward
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

# Load local zsh config if available
if [[ -a ~/.zshrc.local ]]
then
  source ~/.zshrc.local
fi

[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

j() {
    if [[ "$#" -ne 0 ]]; then
        cd $(autojump $@)
        return
    fi
    cd "$(autojump -s | sed '/_____/Q; s/^[0-9,.:]*\s*//' |  fzf --height 40% --reverse --inline-info)" 
}
