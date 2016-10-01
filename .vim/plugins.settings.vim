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
"let g:airline#extensions#tabline#enabled = 1
" Show number of splits and tab number
let g:airline#extensions#tabline#tab_nr_type = 2
" Don't show buffers with a single tab
let g:airline#extensions#tabline#show_buffers = 0
" Display the tabline only if we have more than one tab
let g:airline#extensions#tabline#tab_min_count = 2
" Set some default mappings for navigation
let g:airline#extensions#tabline#buffer_idx_mode = 1
" Remove tabs label
let g:airline#extensions#tabline#tabs_label = ''
" Don't display close button. I never use it.
let g:airline#extensions#tabline#show_close_button = 0
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
" Control extensions that are loaded on startup in order to make the load
" faster
let g:airline_extensions = ['tabline']

" NERDTree
" Enable on Ctrl + N
map <C-n> :NERDTreeToggle<CR>
" Change current directory to the chosen root directory in NERDTree
let g:NERDTreeChDirMode = 2
" Show the bookmarks tree on startup
let NERDTreeShowBookmarks = 1
" Always delete buffer for removed file
let NERDTreeAutoDeleteBuffer = 1

"" Syntastic
"" Suggested defaults
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"" disable it for now, since it slows down file opening significantly
"let g:syntastic_check_on_open = 0
"let g:syntastic_loc_list_height = 5
"let g:syntastic_mode_map = {
"    \ "mode": "active",
"    \ "passive_filetypes": ["java"] }
"" For now keep tsc falling back to tsconfig.json
"let g:syntastic_typescript_tsc_fname = ''
"
"" Make sure icons are enabled
""let g:syntastic_enable_signs = 1
""let g:syntastic_error_symbol='✗'
""let g:syntastic_warning_symbol='⚠'
"
" Easymotion
" Rebind easymotion to single leader
"let g:EasyMotion_smartcase = 1
"nmap s <Plug>(easymotion-s)
"nmap S <Plug>(easymotion-overwin-f)

"" Gundo
"nnoremap <Leader>u :GundoToggle<CR>
"" Make preview window a bit bigger
"let g:gundo_preview_height = 25
"" Refresh preview window manually (helps with gundo performance)
"let g:gundo_auto_preview = 0
"" Open Gundo tree on the right
"let g:gundo_right = 1
"" Close Gundo window when reverting
"let g:gundo_close_on_revert = 1
"
"" Multiple Cursors
"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_start_key = 'g<C-m>'
"let g:multi_cursor_start_word_key = '<C-m>'
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<C-c>'
"
"" CtrlP
"" Set searching from current pwd
"let g:ctrlp_working_path_mode = 'rw'
"" Don't jump to already open window
"let g:ctrlp_switch_buffer = 0
"" Add funky extensions
"let g:ctrlp_extensions = ['funky','tag','buffertag','changes']
"" Files that represent a project root
"let g:ctrlp_root_markers = [".project"]
"" Create shortcuts for ctrlp helpers
"nnoremap <leader>cB :CtrlPBuffer<Cr>
"nnoremap <leader>cr :CtrlPMRU<Cr>
"nnoremap <leader>cT :CtrlPTag<Cr>
"nnoremap <leader>ct :CtrlPBufTag<Cr>
"nnoremap <leader>cC :CtrlPChange<Cr>
"
"" CtrlP Funky
"" Enable function search on ,cf
"nnoremap <leader>cf :CtrlPFunky<Cr>
"" Enable syntax highlighting in the ctrlp window
"let g:ctrlp_funky_syntax_highlight = 1
"" Include ruby class definitions
"let g:ctrlp_funky_ruby_classes = 1
"" Include ruby module definitions
"let g:ctrlp_funky_ruby_modules = 1
"" Include rspec definitions 
"let g:ctrlp_funky_ruby_rspec = 1
"
"" Ag (the_silver_searcher)
"if executable('ag')
"    " Use ag over grep
"    set grepprg=ag\ --nogroup\ --nocolor
"
"    " Use ag in CtrlP for listing files. Lightning fast and respects
"    " .gitignore
"    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s '
"
"    " ag is fast enough that CtrlP doesn't need to cache
"    let g:ctrlp_use_caching = 0
"endif
"
"" bind \ (backward slash) to grep shortcut
""command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"nnoremap <leader>g :LAg!<SPACE>
"
"" bind K to grep word under cursor
"nnoremap K :LAg! <cword><CR>
"
"" UltiSnips
"let g:UltiSnipsEnableSnipMate = 1
"let g:UltiSnipsExpandTrigger = "<c-j>"
"
"" Emmet
"imap <C-e> <C-y>,
"
"" Vim-json
"let g:vim_json_syntax_conceal = 0
"
"" Vim-javascript
""Enable HTML/CSS highlighting in JS
"let g:javascript_enable_domhtmlcss=1
"
"" Vim-javascript-libraries-syntax
"let g:used_javascript_libs = 'underscore,backbone,angularjs,react,jasmine,chai,angularui,angularuirouter,requirejs,flux,jquery'
"
"" Autotag
"let g:autotagExcludeSuffixes = "tml.xml.text.txt.vim"
"
"" Gitgutter
"let g:gitgutter_map_keys = 0
"" Realtime mode causes to many cmd popups on windows. Let's just disable it
"let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0
"
" Surround
" Wrap the token under the cursor in #{} ( use # )
let g:surround_35 = "#{\r}"
" Wrap the token under the cursor in <% %> ( use % )
let g:surround_37 = "<% \r %>"
" Wrap the token under the cursor in <%= %> ( use = )
let g:surround_61 = "<%= \r %>"

"" Tagbar
"nnoremap <silent> <leader>tb :TagbarToggle<CR>
"" Close tagbar when a tag is selected
"let g:tagbar_autoclose = 1
"" Bring cursor focus to tagbar automatically
"let g:tagbar_autofocus = 1
"
"" Fugitive
"" Mappings
"nnoremap <silent> <leader>Gs :Gstatus<CR>
"nnoremap <silent> <leader>Gd :Gdiff<CR>
"nnoremap <silent> <leader>Gc :Gcommit<CR>
"nnoremap <silent> <leader>Gb :Gblame<CR>
"nnoremap <silent> <leader>Gl :Glog<CR>
"nnoremap <silent> <leader>GL :Gpull<CR>
"nnoremap <silent> <leader>Gp :Gpush<CR>
"nnoremap <silent> <leader>Gr :Gread<CR>
"nnoremap <silent> <leader>Gw :Gwrite<CR>
"nnoremap <silent> <leader>Ge :Gedit<CR>
"
"" Indent guides
"" Set guides width to a narrow value
"let g:indent_guides_guide_size = 1
"let g:indent_guides_enable_on_vim_startup = 1
"" Disable guides for nerdtree
"let g:indent_guides_exclude_filetypes = ["help", "nerdtree"]
"
" Delimitmate
" Expand Spaces
let g:delimitMate_expand_space = 1
" Expand Enters
let g:delimitMate_expand_cr = 1

"" Follow My Lead
"" Show leader shortcuts from plugins as well
"let g:fml_all_sources = 1
"
"" Incsearch
"map / <Plug>(incsearch-forward)
"map ? <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
"" Enable automatic nohl
"let g:incsearch#auto_nohlsearch = 1
"map <silent> n  <Plug>(incsearch-nohl-n)zv:ShowSearchIndex<CR>
"map <silent> N  <Plug>(incsearch-nohl-N)zv:ShowSearchIndex<CR>
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)
"" Make it play nicely with indexed-search
"let g:indexed_search_mappings = 0
"augroup incsearch-indexed
    "autocmd!
    "autocmd User IncSearchLeave ShowSearchIndex
"augroup END

"" Eclim
"" Windows version requires this to be set specifically
"let g:EclimBaseDir = "~/.vim"
"" Play nicely with YouCompleteMe
"let g:EclimCompletionMethod = 'omnifunc'
"" Update eclipse local history for better experience while pairing with Java programmers who use Eclipse
"let g:EclimKeepLocalHistory = 1
"" Useful mappings
"nnoremap <leader>epr :ProjectRefresh<CR>
"nnoremap <leader>epR :ProjectRefreshAll<CR>
"" List current project warnings and errors
"nnoremap <leader>epP :ProjectProblems<CR>
"" List only project errors
"nnoremap <leader>epp :ProjectProblems!<CR>
"" Build current Eclipse project
"nnoremap <leader>epb :ProjectBuild<CR>
"" Run current Eclipse project
"nnoremap <leader>epx :ProjectRun<CR>
"" Show list of run configurations for the current project
"nnoremap <leader>epX :ProjectRunList<CR>
"" Display suggestions for the currently highlighted error
"nnoremap <leader>ejC :JavaCorrect<CR>
"" Create or update JavaDoc comment
"nnoremap <leader>ejdc :JavaDocComment<CR>
"" Preview JavaDoc for the word under cursor
"nnoremap <leader>ejdp :JavaDocPreview<CR>
"" Format current line or selection, to format the whole file do :%JavaFormat
"nnoremap <leader>ejf :JavaFormat<CR>
"" Rename symbol under cursor
"nnoremap <leader>ejrr :JavaRename<SPACE>
"" Move top level class or interface
"nnoremap <leader>ejrm :JavaMove<SPACE>
"" Undo refactoring changes
"nnoremap <leader>ejru :RefactorUndo<CR>
"" Show class hierarchy
"nnoremap <leader>ejh :JavaHierarchy<CR>
"" Show call hierarchy
"nnoremap <leader>ejch :JavaCallHierarchy<CR>
"" Show call hierarchy with calees
"nnoremap <leader>ejcH :JavaCallHierarchy!<CR>
"" Import package for the symbol under cursor
"nnoremap <leader>eji :JavaImport<CR>
"" Organize all imports
"nnoremap <leader>ejI :JavaImportOrganize<CR>
"" Create new Generic
"nnoremap <leader>ejN :JavaNew<SPACE>
"" Create new Class
"nnoremap <leader>ejnc :JavaNew class<SPACE>
"" Create new Interface
"nnoremap <leader>ejni :JavaNew interface<SPACE>
"" Create new Abstract
"nnoremap <leader>ejna :JavaNew abstract<SPACE>
"" Create new Enum
"nnoremap <leader>ejne :JavaNew enum<SPACE>
"" Generate constructor. As well works with selection that covers class fields
"nnoremap <leader>ejgc :JavaConstructor<CR>
"xnoremap <leader>ejgc :JavaConstructor<CR>
"" Generate getter and setter for the field under cursor
"nnoremap <leader>ejga :JavaGetSet<CR>
"" Generate getter for the field under cursor
"nnoremap <leader>ejgg :JavaGet<CR>
"" Generate setter for the field under cursor
"nnoremap <leader>ejgs :JavaSet<CR>
"" Generate implementation
"nnoremap <leader>ejgi :JavaImpl<CR>
"" Generate delegate
"nnoremap <leader>ejgd :JavaDelegate<CR>
"" Perform a generic Java Search
"nnoremap <leader>ejS :JavaSearch -p<space>
"" Perform generic search for the symbol under cursor
"nnoremap <leader>ejsa :JavaSearch -x all<CR>
"" Search for declaration
"nnoremap <leader>ejsd :JavaSearch -x declaration<CR>
"" Search for implementation
"nnoremap <leader>ejsi :JavaSearch -x implementors<CR>
"" Search for references
"nnoremap <leader>ejsr :JavaSearch -x references<CR>

" Matchit
let b:match_ignorecase = 1

"" Tabularize
"nmap <leader>ta :Tabularize /
"vmap <leader>ta :Tabularize /
"
"" Gutentags
"set statusline+=%{gutentags#statusline('[Generating\ tags]')}
"let g:gutentags_project_root = [".gtags"]
"" By some reason on windows ctags ignore wildcard
"let g:gutentags_exclude = ["*.min.js"]
"
"" Youcompleteme
"set completeopt-=preview
"" Display suggestions on first character
"let g:ycm_min_num_of_chars_for_completion = 1
"" Collect information from tags as well
"let g:ycm_collect_identifiers_from_tags_files = 1
"" Collect information from the programming language syntax keywords known to
"" vim
"let g:ycm_seed_identifiers_with_syntax = 1
"" Make others onmicompletion engines work better with YCM
"" Have to keep it enabled for now, since the performance with eclim is just
"" way too bad
"let g:ycm_cache_omnifunc = 1
"" Goto within the same buffer
"let g:ycm_goto_buffer_command = 'same-buffer'
"" Configure shortcuts
"nnoremap <leader>Jg :YcmCompleter GoTo<CR>
"nnoremap <leader>Jdc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>Jdf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>Jr :YcmCompleter GoToReferences<CR>
"nnoremap <leader>Ji :YcmCompleter GoToImplementation<CR>
"nnoremap <leader>Jt :YcmCompleter GetType<CR>
"nnoremap <leader>Jp :YcmCompleter GetParent<CR>
"nnoremap <leader>JD :YcmCompleter GetDoc<CR>
"nnoremap <leader>JR :YcmCompleter RefactorRename<SPACE>
"" Enable omnicomplete for various languages
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"
"Yankring
let g:yankring_history_dir = "~/.vim/history"
let g:yankring_history_file = "yank"
let g:yankring_max_history = 25
let g:yankring_replace_n_pkey = "<leader>yj"
let g:yankring_replace_n_nkey = "<leader>yk"
nnoremap <silent> <leader>ys :YRShow<CR>
" just in case for console vim
nnoremap <silent> <leader>yc :YRCheckClipboard<CR>

"" Dispatch
"nnoremap <leader>ds :Dispatch<SPACE>
"nnoremap <leader>dS :Dispatch!<SPACE>
"nnoremap <leader>do :Copen<CR>
"
"" Followmylead
"" Default mapping for the plugin is <leader>fml
"" Collect mappings from all sources
"let g:fml_all_sources = 1
"
"" Argumentative
"" Just a list of provided bindings for reference
"" [, go to previous argument boundary
"" ], go to next argument boundary
"" <, shift current argument left
"" >, shift current argument right
"" a, 'an argument' text object
"" i, 'inner argument' text object
"
"" vim-test
"nmap <silent> <leader>tsn :TestNearest<CR>
"nmap <silent> <leader>tsf :TestFile<CR>
"nmap <silent> <leader>tsa :TestSuite<CR>
"nmap <silent> <leader>tsl :TestLast<CR>
"nmap <silent> <leader>tsv :TestVisit<CR>
"
"" Execute tests through dispatch
"let test#strategy = 'dispatch'
"
" Signature
" A list of useful mappings
" dmx remove mark 'x'
" m- delete all marks from the current line
" m<space> delete all marks from the current buffer
" m/ open location of all marks from the current buffer
" m<BS> remove all marks

"" Wildfire
"map <SPACE> <Plug>(wildfire-fuel)
"
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

"" Linediff
"xmap <leader>Ldf :Linediff<CR>
"xmap <leader>Ldr :LinediffReset<CR>
"nmap <leader>Ldr :LinediffReset<CR>
"
"" Windowswap
"" Use <leader>ww to mark a window to swap and then use the same mapping on
"" another window to swap the two
"
" Goyo
nnoremap <leader>Go :Goyo<CR>
let g:goyo_width = '60%'

" Rooter
let g:rooter_patterns = ['.tern-project', 'Gemfile', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']
let g:rooter_change_directory_for_non_project_files = 1

" Pasta
let g:pasta_disabled_filetypes = ["python", "coffee", "markdown", "yaml", "slim", "nerdtree", "tagbar"]

"" Ctrlp tjump
"nnoremap <c-]> :CtrlPtjump<cr>
"vnoremap <c-]> :CtrlPtjumpVisual<cr>
"" Behave as the default shortcut by default
"let g:ctrlp_tjump_only_silent = 1
"
"" Ctrlp modified
"nnoremap <leader>cg :CtrlPBranch<CR>
"nnoremap <leader>cG :CtrlPModified<CR>
"
"" Argwrap
"nnoremap <silent> <leader>aw :ArgWrap<CR>
"
"" Markdown
"" Don't fold by default
"let g:vim_markdown_folding_disabled = 1
"
"" Jsx
"" Allow Jsx in javascript files
"let g:jsx_ext_required = 0
"
"" Jsdoc
"nnoremap <leader>Jsd :JsDoc<CR>
"
"" Vim-ruby
"" Reference of text objects
"" am, im target method
"" aM, iM target class
"" Hihglight ruby operators
"let ruby_operators = 1
"" Enable ruby completion
"let g:rubycomplete_buffer_loading = 1
"" Parse classes and methods
"let g:rubycomplete_classes_in_global = 3
"" Enable rails completion
"let g:rubycomplete_rails = 1
"" Parse gemfile too
"let g:rubycomplete_load_gemfile = 1
"
"" Vim textobject rubyblock
"" Reference text objects
"" ir, ar target ruby block ( anything that has end )
"
"" Rubyrefactoring
"" Reference to useful mappings
"" ,rap add a parameter to method
"" ,rec extract constant
"" ,relv extract local variable
"" ,rit inline temp
"" ,rrlv rename local variable (visual or under cursor)
"" ,rriv rename instance variable(visual)
"" ,rem extract method (visual)
"
"" Rails
"" Display development logs
"nnoremap <leader>ral :Rlog<CR>
"" Extract part of view->partial, helper->helper or controller -> concern
"" Provide a name
"nnoremap <leader>rax :Rextract<space>
"
"" gitv
"" For the whole repository
"nnoremap <silent> <leader>GV :Gitv<CR>
"" For the current buffer only
"nnoremap <silent> <leader>Gv :Gitv!<CR>
"
"" Devicons
"" Reduce default padding in NERDtree
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"" Required to remove dots in the icons. WTF???
"autocmd FileType nerdtree setlocal nolist

" Sneak
" read case sensitivity property from the main settings
let g:sneak#use_ic_scs = 1
" Enforce streak mode
let g:sneak#streak = 1
nmap s <Plug>(SneakStreak)
nmap S <Plug>(SneakStreakBackward)

"" }