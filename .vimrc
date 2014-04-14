" 1.基本设置
set nocp
set hls
syntax on
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set encoding=UTF-8
set ambiwidth=double
filetype plugin indent on

" 2.文本编辑设置
set sw=4
set ts=4
set et
set smarttab
" set spell

" 3.断行设置
set tw=80
set lbr
set fo+=mB

" 4.C/C++ 编码设置
set sm
set cin
set cino=:0g0t0(sus
set ai

" 5.其他设置
set selectmode=
set keymodel=
set wildmenu
" colo torte

" 6.图形界面设置
" set nowrap
set mousemodel=popup
" set guioptions+=b
" set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI

" 7.条件选择
if (has("gui_running"))
	set nowrap
	set guioptions+=b
	colo murphy
else
	set nowrap
	" colo ron
endif

" 8.实例配置文件
set ru
if (has("win32"))
	if (has("gui_running"))
		set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI
		set guifontwide=YouYuan:h12:cGB2312
        set guioptions-=T
        set guioptions-=m
	endif
else
	if (has("gui_running"))
		set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
        set guifontwide=YouYuan:h12:cGB2312
	endif
endif

" 9.我的设置
set nu
set lines=40 columns=155
set linespace=0
set go=
set ruler
set showcmd
set scrolloff=3
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2
set foldenable
set foldmethod=manual
set nobackup
set noswapfile
set cursorline
" set guioptions-=T
" set guioptions-=m
set noeb
set vb t_vb=
set confirm
set history=1000

language messages zh_CN.utf-8
set termencoding=cp936

" You must add GIT_HOME\bin to your PATH env
set shell=bash

" You must set env_value VIMRUNTIME first
if (has("gui_running"))
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
endif
