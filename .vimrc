"""### Basic Vim Settings ###"""
""==== system settings ====""
"----- Set CharCode default UTF-8 -----
set encoding=utf-8
"----- Set file auto recognizing -----
set fileencodings=cp932,sjis,utf-8
"----- auto read again change files -----
set autoread
""==== editor settings ====""
"----- Line Number default present -----
set number
"----- Auto indent when paste and break, etc. -----
set smartindent
"----- Auto Syntax highright enable -----
syntax on
"----- Strength showing current line -----
set cursorline
set cursorcolumn
"----- Can move cursor to end line -----
set virtualedit=onemore
"----- highright correspondding brackets -----
set showmatch
"----- Autocomplete Command line -----
set wildmode=list:longest
""==== tab settinga ====
"----- Tab to half-space -----
set expandtab
"----- Tab width -----
set shiftwidth=4
""==== Search settings ====
"--- ignore capital or small case ---
set ignorecase
"--- inclimental search ---
set incsearch
"--- highlighting search result ---
set hlsearch

"""### dein.vim Settings ###"""
"dein Scripts----------------------------- 
if &compatible
	set nocompatible               " Be iMproved 
endif  
" Required: 
set runtimepath+=C:/Users/hisazawa/.cache/dein/repos/github.com/Shougo/dein.vim  
" Required: 
call dein#begin(expand('C:/Users/hisazawa/.cache/dein/'))    
" Let dein manage dein   
" Required:   
call dein#add('Shougo/dein.vim')    
" Add or remove your plugins here:   
call dein#add('Shougo/neosnippet.vim')   
call dein#add('Shougo/neosnippet-snippets')    
" You can specify revision/branch/tag.   
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })    
" Required:   
call dein#end()   
" Required: 
filetype plugin indent on 
" If you want to install not installed plugins on startup. 
if dein#check_install() 
	call dein#install() 
endif
"End dein Scripts-------------------------
