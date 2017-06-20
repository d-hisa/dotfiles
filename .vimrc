"######################################################################################
"## Vimrc Settings
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" .vimrc settings agenda
" * Basics: default vim settings
"   + [system] : for systematic settings
"   + [editor] : for editing settings
"   + [search] : search settongs 
" * Extra: unbasical settings (using script)
"	+ [mouse]  : for using mouse
"	+ [clpbrd] : for using clipboard
" * Dein: dein vim plugins settings
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

"######################################################################################
"## Basics
"======================================================================================
"| system
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
set encoding=utf-8			" default charctor code UTF-8
set fileencodings=cp932,sjis,utf-8	" auto file recognizition sequential (left priority high)
set fileformats=unix,dos,mac	" auto eol recognition (left priority high) 
set autoread				" reading again when changed files
set ambiwidth=double		" Improving treated way Double digit on vim
set history=1000			" command history amount
"======================================================================================
"| editor
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
set number					" Line Number present default
set smartindent				" Auto indent when paste and break, or etc.
syntax on					" Auto  syntax highright
set cursorline				" Strength showing current line and column 
set cursorcolumn			" ditto 
set virtualedit=onemore		" can move cursor to end line
set showmatch				" highrighting corresponding both brakets
set wildmode=list:longest	" Autocomplete vim commands
set expandtab				" TAB to halh digit spaces
set shiftwidth=4			" TAB width (present spaces TAB auto inserted by vim)
set tabstop=4				" TAB width (present spaces <TAB> code)
set softtabstop=0			" TAB width (amount spaces when type TAB key))
set textwidth=0				" auto break amount charactors (setting 0, disable auto br)
set backspace=start,eol,indent	" Setting behavior of BackSpace
								" - start : allow  erasing when change InsertMode again 
								"           after back NormalMode
								" - eol   : linking rows when type BS on row head
								" - indent: allow erasng indent
set autoindent				" autoindent enable
set showmatch				" highlight corresponding bracket
"======================================================================================
"| search
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
set ignorecase				" ignore capital or small case
set incsearch				" incremental search
set hlsearch				" highrighting search result
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

"######################################################################################
"## Extra
""======================================================================================
"| Mouse 
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if has('mouse')
	set mouse=a
	if has('mouse_sgr')
		set ttymouse=sgr
	elseif v:version > 703 || v:version is 703 && has('patch632')
	    set ttymouse=sgr
	else
	    set ttymouse=xterm2
	endif
endif
""======================================================================================
"| Clipboard 
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if &term =~ "xterm"
	let &t_SI .= "\e[?2004h"
	let &t_EI .= "\e[?2004l"
	let &pastetoggle = "\e[201~"
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

"######################################################################################
"## Dein
"======================================================================================
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
