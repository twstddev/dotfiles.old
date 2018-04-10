# Setup

## Vim
* Install Vim with Python support
* Install silver searcher or ripgrep - https://github.com/ggreer/the_silver_searcher or https://github.com/BurntSushi/ripgrep
* Install eclim for java support - http://eclim.org/index.html. Install it to .vim/bundle/eclim for vim-plug to manage it.
* Install needed syntax checkers - https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
* Install ctags - http://ctags.sourceforge.net
* Install youcompleteme with needed completers - https://github.com/Valloric/YouCompleteMe. ( In python/ycm/youcompleteme.py remove call to self._AddUltiSnipsDataIfNeeded( extra_data ) in OnBufferVisit  in order to improve overall performance )
* Install fonts from - https://github.com/ryanoasis/nerd-fonts ( make sure to install Deja Vu Sans Mono for Windows )

## ZSH
* Clone antigen into the .antigen folder and create a symlink to it in your HOME folder - https://github.com/zsh-users/antigen
