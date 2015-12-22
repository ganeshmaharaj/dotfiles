""""""""""""""""""""""""""""""""""""""
" Owner:
"	Ganesh Mahalingam
"	ganesh.mahalingam@intel.com
"
""""""""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" No annoying sound on errors
set noerrorbells

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable syntax highlighting
syntax on

set background=dark
colorscheme zellner
" colorscheme ron

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" Insert space whenever i press tab
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Show line numbers
set number

" Show filename
set modeline
set ls=2

" Differente colorscheme for vimdiff
if &diff
	colorscheme elflord
endif

" Enable Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-flake8'
Plugin 'Rykka/riv.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
" Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

"YouCompleteMe stuff
let g:ycm_min_num_of_chars_for_completion = 0

" Flake8 funkiness
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1
let g:flake8_quickfix_height=10
let g:flake8_error_marker='EE'
let g:flake8_warning_marker='WW'
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg
" let g:flake8_quickfix_location="bottomright"
autocmd BufNewFile,BufRead *.py set ft=python
autocmd BufWritePost *.py call Flake8()

"show trailing whitespace                                                       
highlight WhitespaceEOL ctermbg=red guibg=red                                   
match WhitespaceEOL /\s\+$/                                                     
"show column 80                                                                 
:set cc=80                                                                      
:hi ColorColumn ctermbg=lightblue guibg=lightblue
