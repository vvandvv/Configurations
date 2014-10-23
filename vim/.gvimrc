" gui settings
set vb t_vb=                                         " 禁止闪屏和声音
set lines=40 columns=160                             " Vim 窗口大小
colo solarized

set bg=light                                         " 使用浅色主题
set mousem=popup                                     " 右键鼠标会弹出菜单
set go-=T                                            " 去掉 toolbar
set go-=m                                            " 去掉 menubar

" *window*
if(has("win32"))
    set sh=bash                                      " bash 设置为 git 环境的 bash
    set sxq='"'
    set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI   " 字体设置
    set guifontwide=YouYuan:h11:w7:cGB2312
    source $VIMRUNTIME/delmenu.vim                   " 修复菜单乱码
    source $VIMRUNTIME/menu.vim
" *linux*
else                         
    set sh=zsh                                       
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 11      " 字体设置
    set guifontwide=YouYuan:h12:cGB2312
endif
