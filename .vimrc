let g:javascript_plugin_jsdoc = 1

set rtp+=~/.fzf

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()



" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Plugin 'jiangmiao/auto-pairs'

" FORMATTERS
autocmd FileType javascript set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --tab-width\ 4\ --trailing-comma\ all

nnoremap <F5> mzgggqG`z`


" Indent
:set expandtab
:set tabstop=4
:retab
:set shiftwidth=4

" Prettier indent
let g:prettier#config#tab_width = 4
