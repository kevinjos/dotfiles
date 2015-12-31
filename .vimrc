set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" ycm settings
let g:ycm_autoclose_preview_window_after_completion = 1

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" " needed, and have indentation at 8 chars to be sure that all indents are
" tabs
" " (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
