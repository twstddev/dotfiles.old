" Disable vi mode
set nocompatible

" Add Vundle for plugin management
" Following setup is taken from official vundle guide
filetype off

" Add Vundle to runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()

" =============
" Global config
" =============
" {

" Enable filetype detection
filetype on
" Enable filetype based plugins
filetype plugin on
" Enable filetype based indentation
filetype indent on

" }

