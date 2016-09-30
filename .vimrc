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
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim' }
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
Plugin 'whatyouhide/vim-gotham'
Plugin 'blerins/flattown'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'wellsjo/wellsokai.vim'
Plugin 'duythinht/inori'
Plugin 'nice/sweater'
Plugin 'john2x/flatui.vim'
Plugin 'raphamorim/lucario', { 'rtp': 'vim' }
Plugin 'ronny/birds-of-paradise.vim'
Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'KabbAmine/yowish.vim'
Plugin 'crusoexia/vim-dream'
Plugin 'tristen/superman'
Plugin 'AlessandroYorba/Sierra'
Plugin 'AlessandroYorba/Alduin'
Plugin 'atelierbram/vim-colors_duotones'
Plugin 'ninja/sky'
Plugin 'jacoborus/tender.vim'
Plugin 'bcicen/vim-vice'
Plugin 'dracula/vim'
Plugin 'aereal/vim-colors-japanesque'
Plugin 'rakr/vim-two-firewatch'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'notpratheek/vim-luna'
Plugin 'easysid/mod8.vim'
Plugin 'jscappini/material.vim'
Plugin 'trusktr/seti.vim'
" Lean & mean status/tabline for vim that's light as air
Plugin 'paranoida/vim-airlineish'

" ==============
" Utility helpers for other plugins
" ==============
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'xolox/vim-misc'

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
" Plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'
" Plugin provides mappings to easily delete, change and add such surroundings in pairs
Plugin 'tpope/vim-surround'
" Snippets files for various programming languages
Plugin 'honza/vim-snippets'
" The ultimate snippet solution for Vim
Plugin 'SirVer/ultisnips'
" Provides a much simpler way to use some motions
Plugin 'easymotion/vim-easymotion'
" Enable repeating supported plugin maps with .
Plugin 'tpope/vim-repeat'
" Plugin to visualize your Vim undo tree
Plugin 'sjl/gundo.vim'
" Plugin that simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'
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
" A Vim plugin that manages your tag files
Plugin 'ludovicchabant/vim-gutentags'
" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'
" A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'
" Plugin maintains a history of previous yanks, changes and deletes
Plugin 'vim-scripts/YankRing.vim'
" Asynchronous build and test dispatcher
Plugin 'tpope/vim-dispatch'
" A simple function navigator for ctrlp.vim
Plugin 'tacahiroy/ctrlp-funky'
" Smart selection of the closest text object
Plugin 'gcmt/wildfire.vim'
" Show 'Match 123 of 456 /search term/' in Vim searches
Plugin 'henrik/vim-indexed-search'
" Start a * or # search from a visual block
Plugin 'nelstrom/vim-visual-star-search'
" A Vim plugin for looking up documentation
Plugin 'keith/investigate.vim'
" Vim plugin for showing all your <Leader> mappings in a readable table
" including the descriptions
Plugin 'ktonga/vim-follow-my-lead'
" Argumentative aids with manipulating and moving between function arguments
Plugin 'PeterRincker/vim-argumentative'
" Run your tests at the speed of thought
Plugin 'janko-m/vim-test'
" Plugin to toggle, display and navigate marks
Plugin 'kshenoy/vim-signature'
" Improved incremental searching for Vim
Plugin 'haya14busa/incsearch.vim'
" Hyperfocus-writing in Vim
Plugin 'junegunn/limelight.vim'
" Vim plugin that provides additional text objects
Plugin 'wellle/targets.vim'
" A vim plugin to perform diffs on blocks of code
Plugin 'AndrewRadev/linediff.vim'
" Edit large files quickly
Plugin 'vim-scripts/LargeFile'
" Swap your windows without ruining your layout
Plugin 'wesQ3/vim-windowswap'
" A Vim plugin that always highlights the enclosing html/xml tags
Plugin 'Valloric/MatchTagAlways'
" Distraction-free writing in Vim
Plugin 'junegunn/goyo.vim'
" Changes Vim working directory to project root (identified by presence of known directory or file)
" There seems to be a bug that doesn't really change cwd and some plugins stop
" working (easygrep, ycm - ternjs)
Plugin 'airblade/vim-rooter'
" Pasting in Vim with indentation adjusted to destination context
Plugin 'sickill/vim-pasta'
" Make gvim-only colorschemes work transparently in terminal vim
Plugin 'godlygeek/csapprox'
" CtrlP extension for fuzzy-search in tag matches
Plugin 'ivalkeen/vim-ctrlp-tjump'
" Better Diff options for Vim
Plugin 'chrisbra/vim-diff-enhanced'
" Easily open locally modified files in your git-versioned projects
Plugin 'jasoncodes/ctrlp-modified.vim'
" Wrap and unwrap function arguments, lists, and dictionaries in Vim
Plugin 'FooSoft/vim-argwrap'
" Projectionist provides granular project configuration using "projections".
Plugin 'tpope/vim-projectionist'
" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
" A collection of themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'
" Fast and Easy Find and Replace Across Multiple Files
" Come back to it later and try to resolve the issue with Ag on windows, where
" it doesn't recognize --ignore parameter
"Plugin 'dkprice/vim-easygrep'

" ============
" Text Objects
" ============
" Create your own text objects
Plugin 'kana/vim-textobj-user'
" Text objects for indented blocks of lines
" ii, ai, iI, aI
Plugin 'kana/vim-textobj-indent'
" Text objects for functions
" if, af, iF, aF
Plugin 'kana/vim-textobj-function'

" ===========
" Git support
" ===========
" A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks
Plugin 'airblade/vim-gitgutter'
" This is a vimscript for creating gists
"Plugin 'mattn/gist-vim'
" A 'gitk clone' plugin for the text editor Vim
Plugin 'gregsexton/gitv'
" Vim Git runtime files
Plugin 'tpope/vim-git'
" Fugitive extension to manage and merge Git branches
Plugin 'idanarye/vim-merginal'

" ===================
" Syntax and languages
" ===================

" HTML/CSS

" Provides support for expanding abbreviations similar
Plugin 'mattn/emmet-vim'
" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
Plugin 'othree/html5.vim'
" Vim syntax for LESS
Plugin 'groenewege/vim-less'
" Highlight colors in css files
Plugin 'skammer/vim-css-color'
" Vim syntax file for scss (Sassy CSS)
Plugin 'cakebaker/scss-syntax.vim'
" Add CSS3 syntax support to vim's built-in `syntax/css.vim`
Plugin 'hail2u/vim-css3-syntax'

" Javascript

" Enhanced javascript syntax file for Vim
Plugin 'jelera/vim-javascript-syntax'
" Vastly improved Javascript indentation and syntax support in Vim
Plugin 'pangloss/vim-javascript'
" Syntax for JavaScript libraries
Plugin 'othree/javascript-libraries-syntax.vim'
" Tools and environment to make Vim superb for developing with Node.js
Plugin 'moll/vim-node'
" React JSX syntax highlighting and indenting for vim
Plugin 'mxw/vim-jsx'
" Jasmine Plugin for Vim
Plugin 'claco/jasmine.vim'
" Typescript syntax files for Vim
Plugin 'leafgarland/typescript-vim'
" Text objects for functions in javascript.
Plugin 'thinca/vim-textobj-function-javascript'
" List of JavaScript ES6 snippets and syntax highlighting for vim
Plugin 'isRuslan/vim-es6'
" Generate JSDoc to your JavaScript code
Plugin 'heavenshell/vim-jsdoc'
" AngularJS with Vim
Plugin 'burnettk/vim-angular'
" Snippets files for AngularJS including JavaScript, HTML, CoffeeScript and HAML
Plugin 'matthewsimo/angular-vim-snippets'
" Various snippets for developing node.js from vim
Plugin 'jamescarr/snipmate-nodejs'
" Lightweight bag of Vim utilities for Backbone - snipmate snippets, templates and omnicompletion
Plugin 'mklabs/vim-backbone'

" Ruby

" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby'
" Ruby on Rails power tools
Plugin 'tpope/vim-rails'
" Wisely add 'end' in ruby, endfunction/endif/more
Plugin 'tpope/vim-endwise'
" Refactoring tool for Ruby in vim
Plugin 'ecomba/vim-ruby-refactoring'
" A custom text object for selecting ruby blocks
Plugin 'nelstrom/vim-textobj-rubyblock'
" Vim plugin that searches http://apidock.com Ruby, Rails, and RSpec docs from within Vim
Plugin 'mileszs/apidock.vim'
" This plugin allows rapid toggling between the two different styles of ruby blocks
Plugin 'jgdavey/vim-blockle'
" Ruby code completion
"Plugin 'osyo-manga/vim-monster'
" Better rspec syntax highlighting for Vim
Plugin 'keith/rspec.vim'

" Misc

" A vim plugin for working with mustache and handlebars templates
Plugin 'mustache/vim-mustache-handlebars'
" Make vim more Puppet friendly
Plugin 'rodjek/vim-puppet'
" A better JSON for Vim
Plugin 'elzr/vim-json'
" JSON manipulation and pretty printing
Plugin 'tpope/vim-jdaddy'
" Vim syntax highlighting for Jade templates
Plugin 'digitaltoad/vim-jade'
" Syntax highlighting, matching rules and mappings for the original Markdown and extensions
Plugin 'plasticboy/vim-markdown'
" Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'
" CoffeeScript support for vim
Plugin 'kchmck/vim-coffee-script'
" Vim Cucumber runtime files
Plugin 'tpope/vim-cucumber'
" Maven syntax highlighting
Plugin 'NLKNguyen/vim-maven-syntax'
" Support for plantuml syntax
Plugin 'aklt/plantuml-syntax'

" Keep track of interesting plugins, which are not necessary at the moment
" A quick notetaking plugin
"Plugin 'fmoralesc/vim-pad'
" Execute URLs, footnotes, open emails, organize ideas
"Plugin 'vim-scripts/utl.vim'
" A simple Vim plugin to switch segments of text with predefined replacements
"Plugin 'AndrewRadev/switch.vim'
" Vim interface to Web API
"Plugin 'mattn/webapi-vim'
" Better Rainbow Parentheses
"Plugin 'kien/rainbow_parentheses.vim'
" Adds font icons (glyphs ★♨☢) to programming languages, libraries, and web
" developer filetypes
if !has('win32') && !has('win64')
    "Plugin 'ryanoasis/vim-devicons'
endif
" Plugin for vim to enabling opening a file in a given line
"Plugin 'bogado/file-line'
" Multi-language DBGP debugger client for Vim
" Plugin 'joonty/vdebug'
" Always have a nice view for vim split windows!
"Plugin 'zhaocai/GoldenView.Vim'
" Vim plugin to dim inactive windows
"Plugin 'blueyed/vim-diminactive'
" A powerful color tool in vim
"Plugin 'Rykka/colorv.vim'
" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers
"Plugin 'junegunn/vim-peekaboo'
" Highlight cursor word
"Plugin 'osyo-manga/vim-brightest'
" Extension for ctrlp.vim, to have a command palette like sublime text 2
"Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Easy text manupilation for vim
"Plugin 't9md/vim-textmanip'

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
:colorscheme vivid

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
"set textwidth=80
"set colorcolumn=+1

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

" Don't highlight cursor line in inactive windows
augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" }

" =====================
" Plugins configuration {
" =====================

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "airlineish"
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
  if g:airline_theme == 'airlineish'
    " change inactive line background color
    let s:IA = [ '#eeeeee' , '#4F5A5C' , 233 , 67 , '' ]
    let a:palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

    " Change tabline colors
    let g:airline#themes#airlineish#palette.tabline = {
                \ 'airline_tab':     [ '#ffffff' , '#423B52' ,  15 , 200  , '' ],
                \ 'airline_tabsel':  [ '#ffffff' , '#875fd7' ,  15 , 98  , '' ],
                \ 'airline_tabtype': [ '#ffffff' , '#875fd7' ,  15 , 98  , '' ],
                \ 'airline_tabfill': [ '#ffffff' , '#121212' ,  15 , 233 , '' ],
                \ 'airline_tabmod':  [ '#ffffff' , '#ff5f5f' ,  15 , 33  , '' ]
                \ }
  endif
endfunction
" Enable airline tabline for better tabs
let g:airline#extensions#tabline#enabled = 1
" Show number of splits and tab number
let g:airline#extensions#tabline#tab_nr_type = 2
" Don't show buffers with a single tab
let g:airline#extensions#tabline#show_buffers = 0
" Set some default mappings for navigation
let g:airline#extensions#tabline#buffer_idx_mode = 1
" Don't show open splits within the tab
let g:airline#extensions#tabline#show_splits = 0
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" NERDTree
" Enable on Ctrl + N
map <C-n> :NERDTreeToggle<CR>
" Change current directory to the chosen root directory in NERDTree
let g:NERDTreeChDirMode = 2
" Show the bookmarks tree on startup
let NERDTreeShowBookmarks = 1
" Always delete buffer for removed file
let NERDTreeAutoDeleteBuffer = 1

" Syntastic
" Suggested defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" disable it for now, since it slows down file opening significantly
let g:syntastic_check_on_open = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["java"] }
" For now keep tsc falling back to tsconfig.json
let g:syntastic_typescript_tsc_fname = ''

" Make sure icons are enabled
"let g:syntastic_enable_signs = 1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'

" Easymotion
" Rebind easymotion to single leader
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-overwin-f)

" Gundo
nnoremap <Leader>u :GundoToggle<CR>
" Make preview window a bit bigger
let g:gundo_preview_height = 25
" Refresh preview window manually (helps with gundo performance)
let g:gundo_auto_preview = 0
" Open Gundo tree on the right
let g:gundo_right = 1
" Close Gundo window when reverting
let g:gundo_close_on_revert = 1

" Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key = 'g<C-m>'
let g:multi_cursor_start_word_key = '<C-m>'
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'

" CtrlP
" Set searching from current pwd
let g:ctrlp_working_path_mode = 'rw'
" Don't jump to already open window
let g:ctrlp_switch_buffer = 0
" Add funky extensions
let g:ctrlp_extensions = ['funky','tag','buffertag','changes']
" Files that represent a project root
let g:ctrlp_root_markers = [".project"]
" Create shortcuts for ctrlp helpers
nnoremap <leader>cB :CtrlPBuffer<Cr>
nnoremap <leader>cr :CtrlPMRU<Cr>
nnoremap <leader>cT :CtrlPTag<Cr>
nnoremap <leader>ct :CtrlPBufTag<Cr>
nnoremap <leader>cC :CtrlPChange<Cr>

" CtrlP Funky
" Enable function search on ,cf
nnoremap <leader>cf :CtrlPFunky<Cr>
" Enable syntax highlighting in the ctrlp window
let g:ctrlp_funky_syntax_highlight = 1
" Include ruby class definitions
let g:ctrlp_funky_ruby_classes = 1
" Include ruby module definitions
let g:ctrlp_funky_ruby_modules = 1
" Include rspec definitions 
let g:ctrlp_funky_ruby_rspec = 1

" Ag (the_silver_searcher)
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
nnoremap <leader>g :LAg!<SPACE>

" bind K to grep word under cursor
nnoremap K :LAg! <cword><CR>

" UltiSnips
let g:UltiSnipsEnableSnipMate = 1
let g:UltiSnipsExpandTrigger = "<c-j>"

" Emmet
imap <C-e> <C-y>,

" Vim-json
let g:vim_json_syntax_conceal = 0

" Vim-javascript
"Enable HTML/CSS highlighting in JS
let g:javascript_enable_domhtmlcss=1

" Vim-javascript-libraries-syntax
let g:used_javascript_libs = 'underscore,backbone,angularjs,react,jasmine,chai,angularui,angularuirouter,requirejs,flux,jquery'

" Autotag
let g:autotagExcludeSuffixes = "tml.xml.text.txt.vim"

" Gitgutter
let g:gitgutter_map_keys = 0
" Realtime mode causes to many cmd popups on windows. Let's just disable it
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Surround
" Wrap the token under the cursor in #{} ( use # )
let g:surround_35 = "#{\r}"
" Wrap the token under the cursor in <% %> ( use % )
let g:surround_37 = "<% \r %>"
" Wrap the token under the cursor in <%= %> ( use = )
let g:surround_61 = "<%= \r %>"

" Tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>
" Close tagbar when a tag is selected
let g:tagbar_autoclose = 1
" Bring cursor focus to tagbar automatically
let g:tagbar_autofocus = 1

" Fugitive
" Mappings
nnoremap <silent> <leader>Gs :Gstatus<CR>
nnoremap <silent> <leader>Gd :Gdiff<CR>
nnoremap <silent> <leader>Gc :Gcommit<CR>
nnoremap <silent> <leader>Gb :Gblame<CR>
nnoremap <silent> <leader>Gl :Glog<CR>
nnoremap <silent> <leader>GL :Gpull<CR>
nnoremap <silent> <leader>Gp :Gpush<CR>
nnoremap <silent> <leader>Gr :Gread<CR>
nnoremap <silent> <leader>Gw :Gwrite<CR>
nnoremap <silent> <leader>Ge :Gedit<CR>

" Indent guides
" Set guides width to a narrow value
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
" Disable guides for nerdtree
let g:indent_guides_exclude_filetypes = ["help", "nerdtree"]

" Delimitmate
" Expand Spaces
let g:delimitMate_expand_space = 1
" Expand Enters
let g:delimitMate_expand_cr = 1

" Follow My Lead
" Show leader shortcuts from plugins as well
let g:fml_all_sources = 1

" Incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" Enable automatic nohl
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)zv:ShowSearchIndex<CR>
map N  <Plug>(incsearch-nohl-N)zv:ShowSearchIndex<CR>
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" Make it play nicely with indexed-search
let g:indexed_search_mappings = 0
augroup incsearch-indexed
    autocmd!
    autocmd User IncSearchLeave ShowSearchIndex
augroup END

" Eclim
" Windows version requires this to be set specifically
let g:EclimBaseDir = "~/.vim"
" Play nicely with YouCompleteMe
let g:EclimCompletionMethod = 'omnifunc'
" Update eclipse local history for better experience while pairing with Java programmers who use Eclipse
let g:EclimKeepLocalHistory = 1
" Useful mappings
nnoremap <leader>epr :ProjectRefresh<CR>
nnoremap <leader>epR :ProjectRefreshAll<CR>
" List current project warnings and errors
nnoremap <leader>epP :ProjectProblems<CR>
" List only project errors
nnoremap <leader>epp :ProjectProblems!<CR>
" Build current Eclipse project
nnoremap <leader>epb :ProjectBuild<CR>
" Run current Eclipse project
nnoremap <leader>epx :ProjectRun<CR>
" Show list of run configurations for the current project
nnoremap <leader>epX :ProjectRunList<CR>
" Display suggestions for the currently highlighted error
nnoremap <leader>ejC :JavaCorrect<CR>
" Create or update JavaDoc comment
nnoremap <leader>ejdc :JavaDocComment<CR>
" Preview JavaDoc for the word under cursor
nnoremap <leader>ejdp :JavaDocPreview<CR>
" Format current line or selection, to format the whole file do :%JavaFormat
nnoremap <leader>ejf :JavaFormat<CR>
" Rename symbol under cursor
nnoremap <leader>ejrr :JavaRename<SPACE>
" Move top level class or interface
nnoremap <leader>ejrm :JavaMove<SPACE>
" Undo refactoring changes
nnoremap <leader>ejru :RefactorUndo<CR>
" Show class hierarchy
nnoremap <leader>ejh :JavaHierarchy<CR>
" Show call hierarchy
nnoremap <leader>ejch :JavaCallHierarchy<CR>
" Show call hierarchy with calees
nnoremap <leader>ejcH :JavaCallHierarchy!<CR>
" Import package for the symbol under cursor
nnoremap <leader>eji :JavaImport<CR>
" Organize all imports
nnoremap <leader>ejI :JavaImportOrganize<CR>
" Create new Generic
nnoremap <leader>ejN :JavaNew<SPACE>
" Create new Class
nnoremap <leader>ejnc :JavaNew class<SPACE>
" Create new Interface
nnoremap <leader>ejni :JavaNew interface<SPACE>
" Create new Abstract
nnoremap <leader>ejna :JavaNew abstract<SPACE>
" Create new Enum
nnoremap <leader>ejne :JavaNew enum<SPACE>
" Generate constructor. As well works with selection that covers class fields
nnoremap <leader>ejgc :JavaConstructor<CR>
xnoremap <leader>ejgc :JavaConstructor<CR>
" Generate getter and setter for the field under cursor
nnoremap <leader>ejga :JavaGetSet<CR>
" Generate getter for the field under cursor
nnoremap <leader>ejgg :JavaGet<CR>
" Generate setter for the field under cursor
nnoremap <leader>ejgs :JavaSet<CR>
" Generate implementation
nnoremap <leader>ejgi :JavaImpl<CR>
" Generate delegate
nnoremap <leader>ejgd :JavaDelegate<CR>
" Perform a generic Java Search
nnoremap <leader>ejS :JavaSearch -p<space>
" Perform generic search for the symbol under cursor
nnoremap <leader>ejsa :JavaSearch -x all<CR>
" Search for declaration
nnoremap <leader>ejsd :JavaSearch -x declaration<CR>
" Search for implementation
nnoremap <leader>ejsi :JavaSearch -x implementors<CR>
" Search for references
nnoremap <leader>ejsr :JavaSearch -x references<CR>

" Matchit
let b:match_ignorecase = 1

" Tabularize
nmap <leader>ta :Tabularize /
vmap <leader>ta :Tabularize /

" Gutentags
set statusline+=%{gutentags#statusline('[Generating\ tags]')}
let g:gutentags_project_root = [".gtags"]
" By some reason on windows ctags ignore wildcard
let g:gutentags_exclude = ["*.min.js"]

" Youcompleteme
set completeopt-=preview
" Display suggestions on first character
let g:ycm_min_num_of_chars_for_completion = 1
" Collect information from tags as well
let g:ycm_collect_identifiers_from_tags_files = 1
" Collect information from the programming language syntax keywords known to
" vim
let g:ycm_seed_identifiers_with_syntax = 1
" Make others onmicompletion engines work better with YCM
" Have to keep it enabled for now, since the performance with eclim is just
" way too bad
let g:ycm_cache_omnifunc = 1
" Goto within the same buffer
let g:ycm_goto_buffer_command = 'same-buffer'
" Configure shortcuts
nnoremap <leader>Jg :YcmCompleter GoTo<CR>
nnoremap <leader>Jdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>Jdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>Jr :YcmCompleter GoToReferences<CR>
nnoremap <leader>Ji :YcmCompleter GoToImplementation<CR>
nnoremap <leader>Jt :YcmCompleter GetType<CR>
nnoremap <leader>Jp :YcmCompleter GetParent<CR>
nnoremap <leader>JD :YcmCompleter GetDoc<CR>
nnoremap <leader>JR :YcmCompleter RefactorRename<SPACE>
" Enable omnicomplete for various languages
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Yankring
let g:yankring_history_dir = "~/.vim/history"
let g:yankring_history_file = "yank"
let g:yankring_max_history = 25
let g:yankring_replace_n_pkey = "<leader>yj"
let g:yankring_replace_n_nkey = "<leader>yk"
nnoremap <silent> <leader>ys :YRShow<CR>
" just in case for console vim
nnoremap <silent> <leader>yc :YRCheckClipboard<CR>

" Dispatch
nnoremap <leader>ds :Dispatch<SPACE>
nnoremap <leader>dS :Dispatch!<SPACE>
nnoremap <leader>do :Copen<CR>

" Followmylead
" Default mapping for the plugin is <leader>fml
" Collect mappings from all sources
let g:fml_all_sources = 1

" Argumentative
" Just a list of provided bindings for reference
" [, go to previous argument boundary
" ], go to next argument boundary
" <, shift current argument left
" >, shift current argument right
" a, 'an argument' text object
" i, 'inner argument' text object

" vim-test
nmap <silent> <leader>tsn :TestNearest<CR>
nmap <silent> <leader>tsf :TestFile<CR>
nmap <silent> <leader>tsa :TestSuite<CR>
nmap <silent> <leader>tsl :TestLast<CR>
nmap <silent> <leader>tsv :TestVisit<CR>

" Execute tests through dispatch
let test#strategy = 'dispatch'

" Signature
" A list of useful mappings
" dmx remove mark 'x'
" m- delete all marks from the current line
" m<space> delete all marks from the current buffer
" m/ open location of all marks from the current buffer
" m<BS> remove all marks

" Wildfire
map <SPACE> <Plug>(wildfire-fuel)

" Limelight
" Dim unfocused text
let g:limelight_default_coefficient = 0.75
nmap <leader>LL :Limelight!!<CR>
" Focus on selection
nmap <Leader>Lf <Plug>(Limelight)
xmap <Leader>Lf <Plug>(Limelight)

" Targets
" Reference of the useful text objects and hints
" include 'n' to match the closest next object: cin)
" include 'l' to match the closest last object: cil)
" 'a' text object to match function arguments

" Linediff
xmap <leader>Ldf :Linediff<CR>
xmap <leader>Ldr :LinediffReset<CR>
nmap <leader>Ldr :LinediffReset<CR>

" Windowswap
" Use <leader>ww to mark a window to swap and then use the same mapping on
" another window to swap the two

" Goyo
nnoremap <leader>Go :Goyo<CR>
let g:goyo_width = '60%'

" Rooter
let g:rooter_patterns = ['.tern-project', 'Gemfile', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']
let g:rooter_change_directory_for_non_project_files = 1

" Pasta
let g:pasta_disabled_filetypes = ["python", "coffee", "markdown", "yaml", "slim", "nerdtree", "tagbar"]

" Ctrlp tjump
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
" Behave as the default shortcut by default
let g:ctrlp_tjump_only_silent = 1

" Ctrlp modified
nnoremap <leader>cg :CtrlPBranch<CR>
nnoremap <leader>cG :CtrlPModified<CR>

" Argwrap
nnoremap <silent> <leader>aw :ArgWrap<CR>

" Markdown
" Don't fold by default
let g:vim_markdown_folding_disabled = 1

" Jsx
" Allow Jsx in javascript files
let g:jsx_ext_required = 0

" Jsdoc
nnoremap <leader>Jsd :JsDoc<CR>

" Vim-ruby
" Reference of text objects
" am, im target method
" aM, iM target class
" Hihglight ruby operators
let ruby_operators = 1
" Enable ruby completion
let g:rubycomplete_buffer_loading = 1
" Parse classes and methods
let g:rubycomplete_classes_in_global = 3
" Enable rails completion
let g:rubycomplete_rails = 1
" Parse gemfile too
let g:rubycomplete_load_gemfile = 1

" Vim textobject rubyblock
" Reference text objects
" ir, ar target ruby block ( anything that has end )

" Rubyrefactoring
" Reference to useful mappings
" ,rap add a parameter to method
" ,rec extract constant
" ,relv extract local variable
" ,rit inline temp
" ,rrlv rename local variable (visual or under cursor)
" ,rriv rename instance variable(visual)
" ,rem extract method (visual)

" Rails
" Display development logs
nnoremap <leader>ral :Rlog<CR>
" Extract part of view->partial, helper->helper or controller -> concern
" Provide a name
nnoremap <leader>rax :Rextract<space>

" gitv
" For the whole repository
nnoremap <silent> <leader>GV :Gitv<CR>
" For the current buffer only
nnoremap <silent> <leader>Gv :Gitv!<CR>

" Devicons
" Reduce default padding in NERDtree
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" Required to remove dots in the icons. WTF???
autocmd FileType nerdtree setlocal nolist

" }