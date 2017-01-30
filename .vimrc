"--- Line Number default present ---
set number
"--- Auto indent when paste and break, etc. ---
set smartindent
"--- Set CharCode default UTF-8 ---
set encoding=utf-8
"--- Set file auto recognizing ---
set fileencodings=cp932,sjis,utf-8

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
