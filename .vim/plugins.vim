call plug#begin('~/.vim/bundle')

" =========
" Appearance
" =========
" Colors
Plug 'goatslacker/mango.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/seoul256.vim'
Plug 'zeis/vim-kolor'
Plug 'noahfrederick/vim-hemisu'
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'daylerees/colour-schemes', { 'rtp': 'vim' }
Plug 'petelewis/vim-evolution'
Plug 'joshdick/onedark.vim'
Plug 'mkarmona/materialbox'
Plug 'DrowsySaturn/VIvid.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'cdmedia/itg_flat_vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'MaxSt/FlatColor'
Plug 'baskerville/bubblegum'
Plug 'jordwalke/flatlandia'
Plug 'whatyouhide/vim-gotham'
Plug 'blerins/flattown'
Plug 'yosiat/oceanic-next-vim'
Plug 'wellsjo/wellsokai.vim'
Plug 'duythinht/inori'
Plug 'nice/sweater'
Plug 'john2x/flatui.vim'
Plug 'raphamorim/lucario'
Plug 'ronny/birds-of-paradise.vim'
Plug 'hhff/SpacegrayEighties.vim'
Plug 'KabbAmine/yowish.vim'
Plug 'crusoexia/vim-dream'
Plug 'tristen/superman'
Plug 'AlessandroYorba/Sierra'
Plug 'AlessandroYorba/Alduin'
Plug 'atelierbram/vim-colors_duotones'
Plug 'ninja/sky'
Plug 'jacoborus/tender.vim'
Plug 'bcicen/vim-vice'
Plug 'dracula/vim'
Plug 'aereal/vim-colors-japanesque'
Plug 'rakr/vim-two-firewatch'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'notpratheek/vim-luna'
Plug 'easysid/mod8.vim'
Plug 'jscappini/material.vim'
Plug 'trusktr/seti.vim'
" Lean & mean status/tabline for vim that's light as air
"Plug 'paranoida/vim-airlineish'

" ==============
" Utility helpers for other plugins
" ==============
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'xolox/vim-misc'

" ======
" Editor
" ======
" File explorer for vim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'
" Plugin provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'
" Provides a much simpler way to use some motions
"Plug 'easymotion/vim-easymotion'
" The missing motion for Vim
Plug 'justinmk/vim-sneak'
" Enable repeating supported plugin maps with .
Plug 'tpope/vim-repeat'
" Show 'Match 123 of 456 /search term/' in Vim searches
Plug 'henrik/vim-indexed-search'
" Improved incremental searching for Vim
"Plug 'haya14busa/incsearch.vim'
" Lean & mean status/tabline for vim that's light as air
"Plug 'bling/vim-airline'
" A collection of themes for vim-airline
"Plug 'vim-airline/vim-airline-themes'
" A light and configurable statusline/tabline for Vim
Plug 'itchyny/lightline.vim'
" Provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
" Extended % matching for HTML, LaTeX, and many other languages
Plug 'tmhedberg/matchit'
" Plugin to toggle, display and navigate marks
Plug 'kshenoy/vim-signature'
" Plugin maintains a history of previous yanks, changes and deletes
Plug 'vim-scripts/YankRing.vim'
" Edit large files quickly
Plug 'vim-scripts/LargeFile'
" Hyperfocus-writing in Vim
Plug 'junegunn/limelight.vim'
" Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'
" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'
" Changes Vim working directory to project root (identified by presence of known directory or file)
" There seems to be a bug that doesn't really change cwd and some plugins stop
" working (easygrep, ycm - ternjs)
Plug 'airblade/vim-rooter'
" Pasting in Vim with indentation adjusted to destination context
Plug 'sickill/vim-pasta'
" Make gvim-only colorschemes work transparently in terminal vim
Plug 'godlygeek/csapprox'
" Script for text filtering and alignment ( keep it because some other plugins
" require it. puppet )
Plug 'godlygeek/tabular'

if g:ycm_supported
    " A code-completion engine for Vim ( the plugin is very useful but it makes the whole editor slow )
    "Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
    Plug 'Valloric/YouCompleteMe'
endif

" A Vim plugin that always highlights the enclosing html/xml tags
Plug 'Valloric/MatchTagAlways'
" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'
" Fuzzy file, buffer, mru, tag, etc finder ( this plugin should add async
" support hopefully soon )
Plug 'ctrlpvim/ctrlp.vim'
" CtrlP extension for fuzzy-search in tag matches
Plug 'ivalkeen/vim-ctrlp-tjump'
" Multiple cursors and selection support ( review need for this plugin later,
" since I don't really use it often )
"Plug 'terryma/vim-multiple-cursors'
"" A syntax checking plugin
"Plugin 'scrooloose/syntastic'
" A Vim plugin that manages your tag files
Plug 'ludovicchabant/vim-gutentags'
" Helps you win at grep. ( does really work as expected, review later )
"Plug 'mhinz/vim-grepper'
" Vim plugin for the_silver_searcher, 'ag'
Plug 'rking/ag.vim'
" Snippets files for various programming languages
Plug 'honza/vim-snippets'
" The ultimate snippet solution for Vim ( these are quite slow, look for
" alternative in the futuer )
Plug 'SirVer/ultisnips'
"" A simple function navigator for ctrlp.vim
"Plugin 'tacahiroy/ctrlp-funky'
" Better Diff options for Vim
Plug 'chrisbra/vim-diff-enhanced'
" A vim plugin to perform diffs on blocks of code
"Plug 'AndrewRadev/linediff.vim'

"" A plugin for visually displaying indent levels
"Plugin 'nathanaelkane/vim-indent-guides'
"" Plugin to visualize your Vim undo tree
"Plugin 'sjl/gundo.vim'
"" Plugin that simplifies the transition between multiline and single-line code
"Plugin 'AndrewRadev/splitjoin.vim'
"" Easy text exchange operator
"Plugin 'tommcdo/vim-exchange'
"" Vim plugin that displays tags in a window, ordered by scope
"Plugin 'majutsushi/tagbar'
"" Asynchronous build and test dispatcher
"Plugin 'tpope/vim-dispatch'
"" Smart selection of the closest text object
"Plugin 'gcmt/wildfire.vim'
"" Start a * or # search from a visual block
"Plugin 'nelstrom/vim-visual-star-search'
"" A Vim plugin for looking up documentation
"Plugin 'keith/investigate.vim'
"" Vim plugin for showing all your <Leader> mappings in a readable table
"" including the descriptions
"Plugin 'ktonga/vim-follow-my-lead'
"" Argumentative aids with manipulating and moving between function arguments
"Plugin 'PeterRincker/vim-argumentative'
"" Run your tests at the speed of thought
"Plugin 'janko-m/vim-test'
"" Swap your windows without ruining your layout
"Plugin 'wesQ3/vim-windowswap'
"" Easily open locally modified files in your git-versioned projects
"Plugin 'jasoncodes/ctrlp-modified.vim'
"" Wrap and unwrap function arguments, lists, and dictionaries in Vim
"Plugin 'FooSoft/vim-argwrap'
"" Projectionist provides granular project configuration using "projections".
"Plugin 'tpope/vim-projectionist'
"" Fast and Easy Find and Replace Across Multiple Files
"" Come back to it later and try to resolve the issue with Ag on windows, where
"" it doesn't recognize --ignore parameter
""Plugin 'dkprice/vim-easygrep'

" ============
" Text Objects
" ============
" Create your own text objects
Plug 'kana/vim-textobj-user'
" Text objects for indented blocks of lines
" ii, ai, iI, aI
"Plug 'kana/vim-textobj-indent'
" Text objects for functions
" if, af, iF, aF
"Plug 'kana/vim-textobj-function'

"" ===========
"" Git support
"" ===========
" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" Fugitive extension to manage and merge Git branches
Plug 'idanarye/vim-merginal'
" A git commit browser
Plug 'junegunn/gv.vim'
"" This is a vimscript for creating gists
""Plugin 'mattn/gist-vim'
"" A 'gitk clone' plugin for the text editor Vim
"Plugin 'gregsexton/gitv'
"" Vim Git runtime files
"Plugin 'tpope/vim-git'

" ===================
" Syntax and languages
" ===================

" HTML/CSS

" Provides support for expanding abbreviations similar
Plug 'mattn/emmet-vim'
" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
Plug 'othree/html5.vim'
" Vim syntax file for scss (Sassy CSS)
Plug 'cakebaker/scss-syntax.vim'
" Add CSS3 syntax support to vim's built-in `syntax/css.vim`
Plug 'hail2u/vim-css3-syntax'
" Highlight colors in css files ( this plugin causes slight lag on scroll )
Plug 'ap/vim-css-color'
" Vim syntax for LESS
"Plug 'groenewege/vim-less'

" Javascript

" Vastly improved Javascript indentation and syntax support in Vim
Plug 'pangloss/vim-javascript'
" YAJS.vim: Yet Another JavaScript Syntax for Vim ( watch performance of this
" plugin. readme says it tend to be slow )
"Plug 'othree/yajs.vim'
" Enhanced javascript syntax file for Vim ( switch to this plugin if yajs is
" slow )
Plug 'jelera/vim-javascript-syntax'
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'
" Tools and environment to make Vim superb for developing with Node.js
Plug 'moll/vim-node'
" Typescript syntax files for Vim
Plug 'leafgarland/typescript-vim'
" List of JavaScript ES6 snippets and syntax highlighting for vim
Plug 'isRuslan/vim-es6'
" Generate JSDoc to your JavaScript code
Plug 'heavenshell/vim-jsdoc'
" AngularJS with Vim
Plug 'burnettk/vim-angular'
"" React JSX syntax highlighting and indenting for vim
"Plugin 'mxw/vim-jsx'
"" Jasmine Plugin for Vim
"Plugin 'claco/jasmine.vim'
"" Text objects for functions in javascript.
"Plugin 'thinca/vim-textobj-function-javascript'
"" Snippets files for AngularJS including JavaScript, HTML, CoffeeScript and HAML
"Plugin 'matthewsimo/angular-vim-snippets'
"" Various snippets for developing node.js from vim
"Plugin 'jamescarr/snipmate-nodejs'
"" Lightweight bag of Vim utilities for Backbone - snipmate snippets, templates and omnicompletion
"Plugin 'mklabs/vim-backbone'

" Ruby

" Vim/Ruby Configuration Files
Plug 'vim-ruby/vim-ruby'
" Ruby on Rails power tools ( this plugin quite slows down the editor, load it
" only for ruby files. And consider removing it completely in the future )
Plug 'tpope/vim-rails', { 'for': ['ruby'] }
" Wisely add 'end' in ruby, endfunction/endif/more
Plug 'tpope/vim-endwise'
" Better rspec syntax highlighting for Vim
Plug 'keith/rspec.vim'
" Ruby code completion
"Plug 'osyo-manga/vim-monster'
" This plugin allows rapid toggling between the two different styles of ruby blocks
"Plug 'jgdavey/vim-blockle'
" A custom text object for selecting ruby blocks
"Plug 'nelstrom/vim-textobj-rubyblock'
" Refactoring tool for Ruby in vim
"Plug 'ecomba/vim-ruby-refactoring'
"" Vim plugin that searches http://apidock.com Ruby, Rails, and RSpec docs from within Vim
"Plugin 'mileszs/apidock.vim'
"
"" Misc
"
" Make vim more Puppet friendly
Plug 'rodjek/vim-puppet'
" CoffeeScript support for vim
Plug 'kchmck/vim-coffee-script'
" Vim Cucumber runtime files
"Plug 'tpope/vim-cucumber'
"" Maven syntax highlighting
"Plugin 'NLKNguyen/vim-maven-syntax'
" Syntax highlighting, matching rules and mappings for the original Markdown and extensions
"Plug 'plasticboy/vim-markdown'
" A better JSON for Vim ( Check for performance workarounds )
"Plug 'elzr/vim-json'
"" A vim plugin for working with mustache and handlebars templates
"Plugin 'mustache/vim-mustache-handlebars'
"" JSON manipulation and pretty printing
"Plugin 'tpope/vim-jdaddy'
"" Vim syntax highlighting for Jade templates
"Plugin 'digitaltoad/vim-jade'
"" Vim runtime files for Haml, Sass, and SCSS
"Plugin 'tpope/vim-haml'
"" Support for plantuml syntax
"Plugin 'aklt/plantuml-syntax'
"
"" Keep track of interesting plugins, which are not necessary at the moment
"" A quick notetaking plugin
""Plugin 'fmoralesc/vim-pad'
"" Execute URLs, footnotes, open emails, organize ideas
""Plugin 'vim-scripts/utl.vim'
"" A simple Vim plugin to switch segments of text with predefined replacements
""Plugin 'AndrewRadev/switch.vim'
"" Vim interface to Web API
""Plugin 'mattn/webapi-vim'
"" Better Rainbow Parentheses
""Plugin 'kien/rainbow_parentheses.vim'
"" Adds font icons (glyphs ★♨☢) to programming languages, libraries, and web
"" developer filetypes
"if !has('win32') && !has('win64')
"    "Plugin 'ryanoasis/vim-devicons'
"endif
"" Plugin for vim to enabling opening a file in a given line
""Plugin 'bogado/file-line'
"" Multi-language DBGP debugger client for Vim
"" Plugin 'joonty/vdebug'
"" Always have a nice view for vim split windows!
""Plugin 'zhaocai/GoldenView.Vim'
"" Vim plugin to dim inactive windows
""Plugin 'blueyed/vim-diminactive'
"" A powerful color tool in vim
""Plugin 'Rykka/colorv.vim'
"" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers
""Plugin 'junegunn/vim-peekaboo'
"" Highlight cursor word
""Plugin 'osyo-manga/vim-brightest'
"" Extension for ctrlp.vim, to have a command palette like sublime text 2
""Plugin 'fisadev/vim-ctrlp-cmdpalette'
"" Easy text manupilation for vim
""Plugin 't9md/vim-textmanip'

augroup load_on_insert
    autocmd!
    autocmd InsertEnter * call plug#load()
                \| autocmd! load_on_insert
augroup END
call plug#end()