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

zplugin ice wait"1" lucid as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

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

fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

alias glNoGraph='git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr% C(auto)%an" "$@"'
_gitLogLineToHash="echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
_viewGitLogLine="$_gitLogLineToHash | xargs -I % sh -c 'git show --color=always % | diff-so-fancy'"

# fcoc_preview - checkout git commit with previews
fcoc_preview() {
  local commit
  commit=$( glNoGraph |
    fzf --no-sort --reverse --tiebreak=index --no-multi \
        --ansi --preview="$_viewGitLogLine" ) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

fshow_preview() {
    glNoGraph |
        fzf --no-sort --reverse --tiebreak=index --no-multi \
            --ansi --preview="$_viewGitLogLine" \
                --header "enter to view, alt-y to copy hash" \
                --bind "enter:execute:$_viewGitLogLine   | less -R" \
                --bind "alt-y:execute:$_gitLogLineToHash | xclip"
}

zle -N fbr fbr
zle -N fco fcoc_preview
zle -N fshow fshow

bindkey '^gb' fbr
bindkey '^gc' fco
bindkey '^gl' fshow