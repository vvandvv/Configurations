# 安装 GIT 的步骤

1. 下载 msysGit 的最新版本：http://msysgit.github.io/
2. 安装
3. 打开 gitBash，进入 /etc，修改 profile，加入以下两行：`export VIM=/share/vim; alias ls='ls --show-control-chars --color=auto'` 此时，gitBash 下，vim 能自动载入 /share/vim/vimrc 文件，并且以此作为系统级别的 vim 配置文件；执行 ls 会使得中文能够正常显示。

# 安装VIM的步骤

1. 下载 VIM 的最新版本：www.vim.org
2. 安装，已经安装过 GIT，那么 HOME 变量已经在 gitBash 环境中了，如果需要 cmd 也有此变量，需要加入 USER 的环境变量。
3. 把 vim 的可执行路径，放入 USER 的 PATH 中。
4. `git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`，window 下需要把 vimfiles 文件拷贝到 HOME 下，重命名为 .vim，.vim/bundle 文件夹需要新建，其他文件夹可以删除。
5. `git clone git@github.com:vvandvv/Configurations.git ~/repository/configs`，*$HOME* 变量安装 GIT 的时候会自动为 gitBash 环境配置好，但是为了其他程序通用，可以设置设置为系统环境，$HOME/repository 文件夹需要自己建立，用来存放 GIT 仓库。
6. `cp $HOME/repository/configs/vim/.vimrc ~/`。
7. 此时打开*控制台版本*的 VIM，应该是没有任何错误输出的，输入`:BundleInstall`。
8. `cp ~/repository/configs/vim&bash/.gvimrc ~/`。
9. 此时可以打开 GUI VIM。:)~

关于 console vim 显示中文乱码：需要配置 termencoding 为实际 cmd 使用的 encoding。
此时 GIT 自带 vim 执行时，也会加载 .vimrc 文件，运行是没有问题的。
