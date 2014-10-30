" gui settings
set vb t_vb=                                         " 禁止闪屏和声音
set lines=40 columns=200                             " Vim 窗口大小
colo solarized

set mousem=popup                                     " 右键鼠标会弹出菜单
set go-=T                                            " 去掉 toolbar
set go-=m                                            " 去掉 menubar

" *window*
if(has("win32"))
    set gfn=YaHei_Consolas_Hybrid:h12:w6:cANSI        " 字体设置
    set gfw=YaHei_Consolas_Hybrid:h12:w6:cGB2312
    source $VIMRUNTIME/delmenu.vim                    " 修复菜单乱码
    source $VIMRUNTIME/menu.vim
" *linux*
else                         
    set sh=zsh                                       
    set gfn=Bitstream\ Vera\ Sans\ Mono\ 14      " 字体设置
    set gfw=YaHei\ Mono\ 15
endif

nnoremap <silent> <LocalLeader>gs :source ~/.gvimrc<CR>
nnoremap <silent> <LocalLeader>ge :e ~/.gvimrc<CR>
nnoremap <silent> <LocalLeader>gt :tabnew ~/.gvimrc<CR>
