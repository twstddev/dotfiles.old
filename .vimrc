" Disable vi mode
set nocompatible

" Add Vundle for plugin management
" Following setup is taken from official vundle guide
filetype off

" Add Vundle to runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" =========
" Appearance
" =========
" Colors
Plugin 'goatslacker/mango.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'w0ng/vim-hybrid'
Plugin 'junegunn/seoul256.vim'
Plugin 'zeis/vim-kolor'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plugin 'petelewis/vim-evolution'
Plugin 'joshdick/onedark.vim'
Plugin 'mkarmona/materialbox'
Plugin 'DrowsySaturn/VIvid.vim'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'jdkanani/vim-material-theme'
Plugin 'cdmedia/itg_flat_vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'MaxSt/FlatColor'
Plugin 'baskerville/bubblegum'
Plugin 'jordwalke/flatlandia'

" GUI widgets
" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

" ==============
" Utility helpers for other plugins
" ==============
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" ======
" Editor
" ======

" File explorer for vim
Plugin 'scrooloose/nerdtree'

" A plugin for visually displaying indent levels
Plugin 'nathanaelkane/vim-indent-guides'

" A syntax checking plugin
Plugin 'scrooloose/syntastic'

" Provides automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Allows you to use <Tab> for all your insert completion needs
Plugin 'ervandew/supertab'

" Plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" Plugin provides mappings to easily delete, change and add such surroundings in pairs
Plugin 'tpope/vim-surround'

" Snippets files for various programming languages
Plugin 'honza/vim-snippets'

" Provides a much simpler way to use some motions
Plugin 'easymotion/vim-easymotion'

" Enable repeating supported plugin maps with .
Plugin 'tpope/vim-repeat'

" Plugin to visualize your Vim undo tree
Plugin 'sjl/gundo.vim'

" Plugin that simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'

" Plugin that allows you to visually select increasingly larger regions of text  using the same key combination.
" Plugin 'terryma/vim-expand-region'

" Extended % matching for HTML, LaTeX, and many other languages
Plugin 'tmhedberg/matchit'

" Script for text filtering and alignment
Plugin 'godlygeek/tabular'

" Easy text exchange operator
Plugin 'tommcdo/vim-exchange'

" Multiple cursors and selection support
Plugin 'terryma/vim-multiple-cursors'

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'

" Vim plugin for the_silver_searcher, 'ag'
Plugin 'rking/ag.vim'

" Add snippets support to Vim
Plugin 'Shougo/neosnippet.vim'

" Add autocomplete
Plugin 'Shougo/neocomplete.vim'

call vundle#end()

" =============
" General config
" =============
" {

" Set default encoding to UTF-8 without BOM
set fileencoding=utf-8
set encoding=utf-8 nobomb

" Enable filetype detection
filetype on
" Enable filetype based plugins
filetype plugin on
" Enable filetype based indentation
filetype indent on

" Enable syntax highlighting by default
syntax on

" Don't add empty lines at the end of files
set binary
set noeol

" Insert 4 spaces when Tab is pressed
set softtabstop=4
" Set tab width to 4 spaces
set tabstop=4
" Use 4 spaces when you press >>, << or ==
set shiftwidth=4
" Copy the indentation from the previous line when starting a new line
set autoindent 
" Expand tabs to spaces
set expandtab

" Enable syntax highlighting
syntax on

" Disable flashing and beeping
set noeb vb t_vb=

" Allow backspaces in insert mode
set backspace=2

" Enable line numbers
set number

" Highlight all search matches
set hlsearch
" Move cursor while typing search pattern
set incsearch
" Enable case sensitive search if search pattern contains 
" at least one upper case letter
set smartcase
" Ignore case sensitivity in search patterns
set ignorecase

" Create new splits the same size as currently existing ones
set equalalways
" Create new vertical splits on the right side
" to the currently selected split
set splitright
" Create new horizontal splits below the currently selected split
set splitbelow

" Briefly jump to matching brace when inserted
set showmatch
set matchtime=3

" Highlight current line
set cursorline

" Set a line break, so vim won't break words in the middle when wrapping
set linebreak
" Display a wrapper line separator in front of the wrapped lines
let &showbreak='» '  
" Continue wrapped line on the indentation as the main line
set breakindent

" Set global flag by default when replacing
set gdefault

" Add spell checker
set spell
" Shortcut for adding a word to spell checker
map <leader>sa zg
" Displays list of suggestions from spell checker
map <leader>s? z=
" Go to next misspelled word
map <leader>sn ]s
" Go to previous misspelled word
map <leader>sp [s

" Define leader key
let mapleader=","

" Add mapping to navigate between splits using the leader key
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" Use dark background by default
set background=dark
" Set color scheme
:colorscheme badwolf

" Use system clipboard (make sure vim has clipboard support enabled)
set clipboard=unnamed

" Set fast terminal connection by default, no improve user experience
set ttyfast

" Centralise temporary files location
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif
" Enable undo persistence
if has("persistent_undo")
    set undofile
endif

" Skip backups when editing files from following directories
set backupskip=/tmp/*

" Enable modeline in files. This allows setting specific vim options in a file
set modeline
" Look only at first 4 lines
set modelines=4

" Always show status line below a split
set laststatus=2
" Display cursor current position in status line
set ruler
" Display current editing mode
set showmode
" Enable menu above command line that displays completion options
set wildmenu
" Show the (partial) command as it's being typed
set showcmd

" Hide intro message when Vim is launched
set shortmess=atI

" Show the filename in the window titlebar
set title

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Remember up to 500 history entries
set history=500

" Auto reload files changed outside Vim
set autoread

" Set files that should be globally ignored
set wildignore=.DS_Store
set wildignore+=*.png,*.jpg,*.gif,*.jpeg,*.psd

" Enforce number of colors to 256
set t_Co=256

" Insert only one space after joining
set nojoinspaces

" Display line changes
set report=0

" Display separator at 80 characters width
set textwidth=80
set colorcolumn=+1

" Set default shell to zsh
"set shell=zsh

" Don't update the display while running macros
set lazyredraw

" Displays whitespaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Edit vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" Reload vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" }

" =====================
" Plugins configuration {
" =====================

" Airline
let g:airline_powerline_fonts = 1

" NERDTree
" Enable on Ctrl + N
map <C-n> :NERDTreeToggle<CR>
" Change current directory to the chosen root directory in NERDTree
let g:NERDTreeChDirMode = 2

" Syntastic
" Suggested defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Supertab
" Initialize autocomplete with supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "context"
set completeopt-=preview

" Easymotion
" Rebind easymotion to single leader
map <Leader> <Plug>(easymotion-prefix)

" Gundo
nnoremap <Leader>u :GundoToggle<CR>

" Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'

" CtrlP
let g:ctrlp_working_path_mode = 'rw'

" Ag
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    " .gitignore
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s '

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <leader>g :Ag!<SPACE>

" bind K to grep word under cursor
nnoremap K :Ag! <cword><CR>

" Neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

let g:neosnippet#enable_snipmate_compatibility = 1

" Neocomplete
" Enable neocomplete on startup
let g:neocomplete#enable_at_startup = 1

" }