"""""""""""""""""""""""""""""""""""""""""
" GLOBAL PREFERENCES                    "
"""""""""""""""""""""""""""""""""""""""""
set nu
set ts=4
set sw=4 softtabstop=4
set foldmethod=marker
set ai
set ci
set si
set hls
set ruler
set autoindent
set cindent
syntax on
set clipboard=unnamed

set expandtab
set nocompatible
set laststatus=2
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
" Vim note plugins
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

call vundle#end()

filetype plugin indent on
filetype indent plugin on

"set term=xterm-256color
set background=dark
set t_Co=256

hi Comment term=bold cterm=bold ctermfg=4
hi Constant term=bold cterm=bold
let g:solarized_termcolors=256
let g:ycm_confirm_extra_conf=0
let g:syntastic_always_populate_loc_list=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_server_use_vim_stdout=1
let g:ycm_server_log_level='debug'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set tags+=./.tags

autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

colorscheme luna-term 


"""""""""""""""""""""""""""""""""""""""""
" PERSONAL PREFERENCES                  "
"""""""""""""""""""""""""""""""""""""""""

" wilee 
au BufRead,BufNewFile /home/kddlab/wilee/* colorscheme luna-term
au BufRead,BufNewFile /home/kddlab/wilee/* set colorcolumn=80 
