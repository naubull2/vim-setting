set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기
set shiftwidth=2 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=2
set tabstop=2
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set nocompatible
set listchars=space:·,tab:>-,eol:$,trail:~,extends:>,precedes:<
"set colorcolumn=100

" Syntax Highlighting
if has("syntax")
	syntax on
endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif


" Vundle plugin manager settings
filetype off
set rtp+=/Users/dan/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "Vundle
Plugin 'vim-airline/vim-airline' "vim statusbar
Plugin 'nvie/vim-flake8' "flake8
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

filetype plugin indent on
filetype indent plugin on

set background=dark "for dark colorschemes
set t_Co=256 "256 color setting

"Dan's preference1
hi Comment term=bold cterm=bold ctermfg=4
hi Constant term=bold cterm=bold

"Jedi-vim settings: auto close helper when cursor leaves current word
autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif
autocmd Filetype python setlocal expandtab ts=4 sw=4
autocmd Filetype python map <buffer> <F3> :call Flake8()<CR>
autocmd BufWritePost *.py call Flake8()

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=237


"let g:flake8_show_in_file=1
"let g:flake8_max_markers=500

"Dan's preference2
colorscheme solarized8
"colorscheme luna-term
"colorscheme deus

set term=screen-256color
set fileencodings=utf-8

