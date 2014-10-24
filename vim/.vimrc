" 1. basic setting
set nocp                                             " 设置非兼容模式 
set tm=250                                           " 设置切换状态的延时，默认是 1000ms；也是 Leader 停留时
set tag=./tags/$HOME                                 " 设置查找 tags 文件的范围
set hls                                              " 高亮搜索
syntax enable                                        " 语法高亮
set backspace=indent,eol,start                       " 在 insert 模式下，可以删除 缩进、行尾、以及进入 inster 之前的位置
set wrap                                             " 设置折行
set ww=b,s,<,>,[,]                                   " 在 normal 和 visual 模式下 b 退格、s 空格、< 做箭头、> 右箭头，在 insert 和 replace 模式下 [ 左箭头、] 右箭头 可以跨行
set tw=0                                             " 设置行最大宽度，超过就折行(在行尾插入 eol)，禁用此功能
set isk+=_,$,@,%,#,-                                 " 在默认的 WORD 字符基础上，添加 _,$,@,%,#,- 字符，点击 w 时把这些作为一个 WORD 
set enc=UTF-8                                        " 设置 Vim 工作的编码环境
set fencs=ucs-bom,UTF-8,chinese,cp936                " 打开文件时，探测编码顺序
set ambw=double                                      " 在使用 UTF-8 编码时，使用多字节编码的数目
set nobk                                             " 禁用自动备份，现在内容会保存，以前的内容不备份
set nowb                                             " 禁用复写备份，如果保存失败，会同时丢失现在书写内容和原先文件内容
set noswf                                            " 禁用临时文件
set bh=hide                                          " buffer 不可见的时候隐藏，并非 unload

" 2. editor setting: tab
set sw=4                                             " 设置 shiftwidth 值，代码 indent 时插入的空格数目
set ts=4                                             " 设置 tabstop 值，<TAB> 占用的空格数目
set et                                               " 插入模式中，输入 <TAB> 替换为空格
set sta                                              " 不同层级，不同缩进

" 3. editor setting: line
set lbr                                              " 在某些字符（breakat）才会显示换行(仅仅显示换行，不插入 eol)
set fo+=mB                                           " format option 用某些字母表示

" 4. C/C++ coding
set sm                                               " show match 显示匹配括号
set mat=5                                            " 匹配显示时间
set cin                                              " C 语音风格的缩进
set cino=:0g0t0(sus                                  " C 语音缩进格式 
set cinw=if,else,while,do,for,switch,case            " 额外增加缩进的词语
set ai                                               " 使用自动缩进

" 5. other
set slm=key                                          " 选择模式，文字被选中后可以直接替换，一般编辑器默认模式
set km=startsel,stopsel                              " 使用 shift + spec_move 进入选择；spec_move 退出选择
set wmnu                                             " 使得命令行补全，更加激进，可以使用 <TAB>、CTRL+P/CTRL+N 补全命令

" 6. my settings: for dispaly
set ru                                               " 使用标尺
set nu                                               " 显示行号
"
set lsp=1                                            " 设置行间距，像素
set sc                                               " 在窗口下回显输入的命令
set so=3                                             " 光标距离屏幕顶端和底端的行数
set ls=2                                             " 何时显示状态栏
set stl=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
                                                     " 显示状态栏的格式
set cul                                              " 高亮当前行
set noeb
set novb
set vb t_vb=                                         " 用闪屏代替错误音，设置闪屏为空，效果是禁用一切错误提示（在 GUI 下，会重置，故需要 .gvimrc 文件）
set nocf                                             " 未保存提示用文本方式交互，不弹出对话框
set hi=1000                                          " 命令行历史，保存条数

set fen                                              " 启用代码折叠
set fdm=manual                                       " 代码折叠模式，手动
set fdl=100                                          " 折叠的层级
set fdo=block,hor,mark,percent,quickfix,tag          " 能打开折叠的移动

set nolist                                           " 显示无法打印的字符
set lcs=tab:>∙,eol:ﬂ,trail:∙,extends:»,precedes:«    " 特殊字符的显示方式；一些特殊字符：¬, ﬂ, ∆, µ, ‹, ¢ 适合作为填充字符

set mouse-=a                                         " 不用鼠标
set mh                                               " 输入时隐藏鼠标
set sb                                               " 新窗口打开在现有窗口下面
set spr                                              " 新窗口打开在现有窗口右边

colo desert                                          " 使用的配色方案
set bg=dark                                          " 使用深色主题

if (has("win32")) 
    set termencoding=cp936
endif

" ∆ 使用 vundle 管理插件
filet off                                            " 设置使用 vundle 管理插件
set rtp+=~/.vim/bundle/Vundle.vim        " run time path 添加 vundle 
call vundle#begin("~/.vim/bundle")       " 插件存放的位置
" vundle 作者的 bundles
Plugin 'gmarik/Vundle.vim'
" markdown syntac highlight
Plugin 'Markdown'
" solarized color theme
Plugin 'altercation/vim-colors-solarized'
" =====
call vundle#end()
filet plugin indent on                               " 文件类型自动判别，缩进，插件

" ∆ 以下来自于 gmarik
" auto commands
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}      set ft=ruby                " ruby 文件格式自动识别
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                          set ft=markdown            " markdown
au BufRead,BufNewFile {COMMIT_EDITMSG}                                 set ft=gitcommit           " gitcommit

" key mappings ============================

let maplocalleader=';'

" .vimrc ==================================

" 重新载入 .vimrc
nnoremap <silent> <LocalLeader>s :source ~/.vimrc<CR>
" 编辑
nnoremap <silent> <LocalLeader>e :e ~/.vimrc<CR>
nnoremap <silent> <LocalLeader>t :tabnew ~/.vimrc<CR>

" tabs ===================================

" 前一个标签页
nnoremap <silent> <LocalLeader>[ :tabprev<CR>
" 后一个
nnoremap <silent> <LocalLeader>] :tabnext<CR>

" duplication =============================

" 复制后粘贴
vnoremap <silent> <LocalLeader>= yP
" 同上
nnoremap <silent> <LocalLeader>= YP

" invisible chars =========================

map <silent> <F12> :set invlist<CR>
