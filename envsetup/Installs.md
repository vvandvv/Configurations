# 安装 GIT 的步骤

1. 下载 msysGit 的最新版本：http://msysgit.github.io/
2. 安装，添加 GIT_HOME 环境变量，%GIT_HOME%/bin 加入用户 PATH，使得可以在 cmd 中调用。
3. 打开 gitBash，编辑 /etc/profile，加入 `export VIM=$VIM_HOME` 和 `alias ls='ls --show-control-chars --color=auto'`。

# 环境设置

1. 用 ~ 来指代 gitBash 下的 $HOME 或 cmd 下的 %USERPROFILE%。在 ~ 下建立 repository 文件加，存放 git 仓库。
2. `git clone git@github.com:vvandvv/Configurations.git ~/repository/configs`。
3. 这篇文档也在 configs 中供查阅。用 hosts 替换 Window/System32/Drivers/etc/hosts，拷贝 .vimrc 和 .gvimrc 到 ~ 下。

# 安装 VIM 的步骤

1. 下载 VIM 的最新版本：www.vim.org
2. 安装，添加 VIM_HOME 环境变量，%VIM_HOME%/vim74 加入用户 PATH。
3. `git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`，把 vimfiles 文件拷贝到 ~ 下，重命名为 .vim，.vim/bundle 文件夹需要新建，其他文件夹可以删除。
5. `cp $HOME/repository/configs/vim/.vimrc ~/`。
6. 此时打开*控制台版本*的 VIM，应该是没有任何错误输出的，输入`:BundleInstall`。
7. `cp ~/repository/configs/vim&bash/.gvimrc ~/`。
8. 此时可以打开 GUI VIM。:)~

关于 console vim 显示中文乱码：需要配置 termencoding 为实际 cmd/gitBash 使用的 encoding。

# 关于 VIM 的字体

需要安装 VeraMono 和 SimYou 字体，否则 VIM 会提示找不到字体。

# 关于 Git 下的 Vim 替换

gitBash 会有个 Vim 的环境，在 /share/vim 下；在 /bin 下有模拟的符号链接 vim 指向 /share/vim/vim74/vim。
在 /etc/profile 中设置 VIM 变量，会使得 gitBash 下运行的 vim 是 /share/vim，可能会有各种问题，例如 desert 配色无法找到，markdown 语法无法识别等。
最好的方式：
> 
更改 /etc/profile 的 VIM 变量为 VIM_HOME，安装 VIM 时就添加这个用户变量指向自己安装的 VIM。
更改 /bin/vim 和 /bin/vi 的脚本：`exec /share/vim/vim74/vim "$@"` -> `exec $VIM/vim74/vim "$@"`。

这样可以完美用自己安装的 VIM 替换 git 下的 VIM，或者：
>
直接删除 /bin/vim 脚本。
更改 /bin/vi 的脚本，如上例。

这样也可以解决问题。
