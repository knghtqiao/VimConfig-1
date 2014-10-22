" My Custom Configurated Vim
" Zhchnchn <zjl_133@163.com>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 放在syntax on之后，会使语法高亮失效，所以将其位置提前
filetype off
" Test: add a command- :Status
command! Status echo "All systems are go!"

" 关闭vi兼容.避免以前版本的一些bug和局限
set nocompatible 
" 在insert模式下用退格键删除
"  0,1: 仅可删除刚刚输入的字符，而无法删除原本已经存在的文字
"  2: 可以删除任意值
set backspace=2  "set bs=2
" 为光标所在行加下划线
set cursorline  "set cul
" 显示行号
set number 
" 文件在Vim之外修改过，自动重新读入
set autoread
" 当修改文件时不进行自动备份
set nobackup
" 括号匹配高亮
set showmatch

" 检索时忽略大小写
set ignorecase
" 搜索高亮显示所有匹配
set hlsearch  "set hls
" 增量查找, n|N: 查找下一个|上一个
set incsearch

" 设置vim帮助为中文, 编码为utf-8
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif

" 设置自动缩进
set autoindent  "set ci
" 智能选择缩进方式
set smartindent
" 在C编码时,自动完成缩进内嵌代码块
set cindent

" 设置tab键缩进为4个空格的距离，vim默认是8
set tabstop=4  "set ts=4
" 设置tab缩进为空格
set expandtab "set et
" 设置换行自动缩进为4个空格
set shiftwidth=4
" 解决缩进带来的一些显示问题
set display=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax on  "syn on
" 背景设为黑色
set background=dark
" 设置配色方案
colorscheme slate

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 当执行pathogen任务时, Filetype detection 必须设为off. 
" 但是将其放在这里的话，会使语法高亮失效
" 所以要把 \"filetype off\" 放在该文件的最前面
" filetype off
call pathogen#infect()
call pathogen#helptags()

" 定制mapping. 解决the error when use vim:
" Error detected while processing /home/maxime/.vim/bundle/tasklist/plugin/tasklist.vim
nnoremap <leader>v <Plug>TaskList



