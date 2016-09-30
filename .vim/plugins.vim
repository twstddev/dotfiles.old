call plug#begin('~/.vim/bundle')
call plug#end()

"" Disable vi mode
"set nocompatible
"
"" Add Vundle for plugin management
"" Following setup is taken from official vundle guide
"filetype off
"
"" Add Vundle to runtime path
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
"
"" =========
"" Appearance
"" =========
"" Colors
"Plugin 'goatslacker/mango.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'morhetz/gruvbox'
"Plugin 'sjl/badwolf'
"Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'junegunn/seoul256.vim'
"Plugin 'zeis/vim-kolor'
"Plugin 'noahfrederick/vim-hemisu'
"Plugin 'vim-scripts/Colour-Sampler-Pack'
"Plugin 'daylerees/colour-schemes', { 'rtp': 'vim' }
"Plugin 'petelewis/vim-evolution'
"Plugin 'joshdick/onedark.vim'
"Plugin 'mkarmona/materialbox'
"Plugin 'DrowsySaturn/VIvid.vim'
"Plugin 'gilgigilgil/anderson.vim'
"Plugin 'jdkanani/vim-material-theme'
"Plugin 'cdmedia/itg_flat_vim'
"Plugin 'gosukiwi/vim-atom-dark'
"Plugin 'MaxSt/FlatColor'
"Plugin 'baskerville/bubblegum'
"Plugin 'jordwalke/flatlandia'
"Plugin 'whatyouhide/vim-gotham'
"Plugin 'blerins/flattown'
"Plugin 'yosiat/oceanic-next-vim'
"Plugin 'wellsjo/wellsokai.vim'
"Plugin 'duythinht/inori'
"Plugin 'nice/sweater'
"Plugin 'john2x/flatui.vim'
"Plugin 'raphamorim/lucario', { 'rtp': 'vim' }
"Plugin 'ronny/birds-of-paradise.vim'
"Plugin 'hhff/SpacegrayEighties.vim'
"Plugin 'KabbAmine/yowish.vim'
"Plugin 'crusoexia/vim-dream'
"Plugin 'tristen/superman'
"Plugin 'AlessandroYorba/Sierra'
"Plugin 'AlessandroYorba/Alduin'
"Plugin 'atelierbram/vim-colors_duotones'
"Plugin 'ninja/sky'
"Plugin 'jacoborus/tender.vim'
"Plugin 'bcicen/vim-vice'
"Plugin 'dracula/vim'
"Plugin 'aereal/vim-colors-japanesque'
"Plugin 'rakr/vim-two-firewatch'
"Plugin 'tyrannicaltoucan/vim-deep-space'
"Plugin 'notpratheek/vim-luna'
"Plugin 'easysid/mod8.vim'
"Plugin 'jscappini/material.vim'
"Plugin 'trusktr/seti.vim'
"" Lean & mean status/tabline for vim that's light as air
"Plugin 'paranoida/vim-airlineish'
"
"" ==============
"" Utility helpers for other plugins
"" ==============
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'xolox/vim-misc'
"
"" ======
"" Editor
"" ======
"" File explorer for vim
"Plugin 'scrooloose/nerdtree'
"" A plugin for visually displaying indent levels
"Plugin 'nathanaelkane/vim-indent-guides'
"" A syntax checking plugin
"Plugin 'scrooloose/syntastic'
"" Provides automatic closing of quotes, parenthesis, brackets, etc.
"Plugin 'Raimondi/delimitMate'
"" Plugin for intensely orgasmic commenting
"Plugin 'scrooloose/nerdcommenter'
"" Plugin provides mappings to easily delete, change and add such surroundings in pairs
"Plugin 'tpope/vim-surround'
"" Snippets files for various programming languages
"Plugin 'honza/vim-snippets'
"" The ultimate snippet solution for Vim
"Plugin 'SirVer/ultisnips'
"" Provides a much simpler way to use some motions
"Plugin 'easymotion/vim-easymotion'
"" Enable repeating supported plugin maps with .
"Plugin 'tpope/vim-repeat'
"" Plugin to visualize your Vim undo tree
"Plugin 'sjl/gundo.vim'
"" Plugin that simplifies the transition between multiline and single-line code
"Plugin 'AndrewRadev/splitjoin.vim'
"" Extended % matching for HTML, LaTeX, and many other languages
"Plugin 'tmhedberg/matchit'
"" Script for text filtering and alignment
"Plugin 'godlygeek/tabular'
"" Easy text exchange operator
"Plugin 'tommcdo/vim-exchange'
"" Multiple cursors and selection support
"Plugin 'terryma/vim-multiple-cursors'
"" Fuzzy file, buffer, mru, tag, etc finder
"Plugin 'ctrlpvim/ctrlp.vim'
"" Vim plugin for the_silver_searcher, 'ag'
"Plugin 'rking/ag.vim'
"" A Vim plugin that manages your tag files
"Plugin 'ludovicchabant/vim-gutentags'
"" Vim plugin that displays tags in a window, ordered by scope
"Plugin 'majutsushi/tagbar'
"" A code-completion engine for Vim
"Plugin 'Valloric/YouCompleteMe'
"" Plugin maintains a history of previous yanks, changes and deletes
"Plugin 'vim-scripts/YankRing.vim'
"" Asynchronous build and test dispatcher
"Plugin 'tpope/vim-dispatch'
"" A simple function navigator for ctrlp.vim
"Plugin 'tacahiroy/ctrlp-funky'
"" Smart selection of the closest text object
"Plugin 'gcmt/wildfire.vim'
"" Show 'Match 123 of 456 /search term/' in Vim searches
"Plugin 'henrik/vim-indexed-search'
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
"" Plugin to toggle, display and navigate marks
"Plugin 'kshenoy/vim-signature'
"" Improved incremental searching for Vim
"Plugin 'haya14busa/incsearch.vim'
"" Hyperfocus-writing in Vim
"Plugin 'junegunn/limelight.vim'
"" Vim plugin that provides additional text objects
"Plugin 'wellle/targets.vim'
"" A vim plugin to perform diffs on blocks of code
"Plugin 'AndrewRadev/linediff.vim'
"" Edit large files quickly
"Plugin 'vim-scripts/LargeFile'
"" Swap your windows without ruining your layout
"Plugin 'wesQ3/vim-windowswap'
"" A Vim plugin that always highlights the enclosing html/xml tags
"Plugin 'Valloric/MatchTagAlways'
"" Distraction-free writing in Vim
"Plugin 'junegunn/goyo.vim'
"" Changes Vim working directory to project root (identified by presence of known directory or file)
"" There seems to be a bug that doesn't really change cwd and some plugins stop
"" working (easygrep, ycm - ternjs)
"Plugin 'airblade/vim-rooter'
"" Pasting in Vim with indentation adjusted to destination context
"Plugin 'sickill/vim-pasta'
"" Make gvim-only colorschemes work transparently in terminal vim
"Plugin 'godlygeek/csapprox'
"" CtrlP extension for fuzzy-search in tag matches
"Plugin 'ivalkeen/vim-ctrlp-tjump'
"" Better Diff options for Vim
"Plugin 'chrisbra/vim-diff-enhanced'
"" Easily open locally modified files in your git-versioned projects
"Plugin 'jasoncodes/ctrlp-modified.vim'
"" Wrap and unwrap function arguments, lists, and dictionaries in Vim
"Plugin 'FooSoft/vim-argwrap'
"" Projectionist provides granular project configuration using "projections".
"Plugin 'tpope/vim-projectionist'
"" Lean & mean status/tabline for vim that's light as air
"Plugin 'bling/vim-airline'
"" A collection of themes for vim-airline
"Plugin 'vim-airline/vim-airline-themes'
"" Fast and Easy Find and Replace Across Multiple Files
"" Come back to it later and try to resolve the issue with Ag on windows, where
"" it doesn't recognize --ignore parameter
""Plugin 'dkprice/vim-easygrep'
"
"" ============
"" Text Objects
"" ============
"" Create your own text objects
"Plugin 'kana/vim-textobj-user'
"" Text objects for indented blocks of lines
"" ii, ai, iI, aI
"Plugin 'kana/vim-textobj-indent'
"" Text objects for functions
"" if, af, iF, aF
"Plugin 'kana/vim-textobj-function'
"
"" ===========
"" Git support
"" ===========
"" A Git wrapper so awesome, it should be illegal
"Plugin 'tpope/vim-fugitive'
"" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks
"Plugin 'airblade/vim-gitgutter'
"" This is a vimscript for creating gists
""Plugin 'mattn/gist-vim'
"" A 'gitk clone' plugin for the text editor Vim
"Plugin 'gregsexton/gitv'
"" Vim Git runtime files
"Plugin 'tpope/vim-git'
"" Fugitive extension to manage and merge Git branches
"Plugin 'idanarye/vim-merginal'
"
"" ===================
"" Syntax and languages
"" ===================
"
"" HTML/CSS
"
"" Provides support for expanding abbreviations similar
"Plugin 'mattn/emmet-vim'
"" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
"Plugin 'othree/html5.vim'
"" Vim syntax for LESS
"Plugin 'groenewege/vim-less'
"" Highlight colors in css files
"Plugin 'skammer/vim-css-color'
"" Vim syntax file for scss (Sassy CSS)
"Plugin 'cakebaker/scss-syntax.vim'
"" Add CSS3 syntax support to vim's built-in `syntax/css.vim`
"Plugin 'hail2u/vim-css3-syntax'
"
"" Javascript
"
"" Enhanced javascript syntax file for Vim
"Plugin 'jelera/vim-javascript-syntax'
"" Vastly improved Javascript indentation and syntax support in Vim
"Plugin 'pangloss/vim-javascript'
"" Syntax for JavaScript libraries
"Plugin 'othree/javascript-libraries-syntax.vim'
"" Tools and environment to make Vim superb for developing with Node.js
"Plugin 'moll/vim-node'
"" React JSX syntax highlighting and indenting for vim
"Plugin 'mxw/vim-jsx'
"" Jasmine Plugin for Vim
"Plugin 'claco/jasmine.vim'
"" Typescript syntax files for Vim
"Plugin 'leafgarland/typescript-vim'
"" Text objects for functions in javascript.
"Plugin 'thinca/vim-textobj-function-javascript'
"" List of JavaScript ES6 snippets and syntax highlighting for vim
"Plugin 'isRuslan/vim-es6'
"" Generate JSDoc to your JavaScript code
"Plugin 'heavenshell/vim-jsdoc'
"" AngularJS with Vim
"Plugin 'burnettk/vim-angular'
"" Snippets files for AngularJS including JavaScript, HTML, CoffeeScript and HAML
"Plugin 'matthewsimo/angular-vim-snippets'
"" Various snippets for developing node.js from vim
"Plugin 'jamescarr/snipmate-nodejs'
"" Lightweight bag of Vim utilities for Backbone - snipmate snippets, templates and omnicompletion
"Plugin 'mklabs/vim-backbone'
"
"" Ruby
"
"" Vim/Ruby Configuration Files
"Plugin 'vim-ruby/vim-ruby'
"" Ruby on Rails power tools
"Plugin 'tpope/vim-rails'
"" Wisely add 'end' in ruby, endfunction/endif/more
"Plugin 'tpope/vim-endwise'
"" Refactoring tool for Ruby in vim
"Plugin 'ecomba/vim-ruby-refactoring'
"" A custom text object for selecting ruby blocks
"Plugin 'nelstrom/vim-textobj-rubyblock'
"" Vim plugin that searches http://apidock.com Ruby, Rails, and RSpec docs from within Vim
"Plugin 'mileszs/apidock.vim'
"" This plugin allows rapid toggling between the two different styles of ruby blocks
"Plugin 'jgdavey/vim-blockle'
"" Ruby code completion
""Plugin 'osyo-manga/vim-monster'
"" Better rspec syntax highlighting for Vim
"Plugin 'keith/rspec.vim'
"
"" Misc
"
"" A vim plugin for working with mustache and handlebars templates
"Plugin 'mustache/vim-mustache-handlebars'
"" Make vim more Puppet friendly
"Plugin 'rodjek/vim-puppet'
"" A better JSON for Vim
"Plugin 'elzr/vim-json'
"" JSON manipulation and pretty printing
"Plugin 'tpope/vim-jdaddy'
"" Vim syntax highlighting for Jade templates
"Plugin 'digitaltoad/vim-jade'
"" Syntax highlighting, matching rules and mappings for the original Markdown and extensions
"Plugin 'plasticboy/vim-markdown'
"" Vim runtime files for Haml, Sass, and SCSS
"Plugin 'tpope/vim-haml'
"" CoffeeScript support for vim
"Plugin 'kchmck/vim-coffee-script'
"" Vim Cucumber runtime files
"Plugin 'tpope/vim-cucumber'
"" Maven syntax highlighting
"Plugin 'NLKNguyen/vim-maven-syntax'
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
"
"call vundle#end()
