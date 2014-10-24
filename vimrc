" My Custom Configurated Vim
" Zhchnchn <zjl_133@163.com>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"pathogen{
    " 当执行pathogen任务时, Filetype detection 必须设为off. 
    " 但是将其放在这里的话，会使语法高亮失效
    " 所以设置完pathogen之后，需要将filetype detection重新打开
    filetype off
    call pathogen#infect()
    call pathogen#helptags()
    " 将filetype detection重新打开
    filetype plugin indent on
    " 定制mapping. 解决the error when use vim:
    " Error detected while processing /home/maxime/.vim/bundle/tasklist/plugin/tasklist.vim
    nnoremap <leader>v <Plug>TaskList
"}

"taglist{
    " 只显示当前文件的taglist，默认是显示多个
    let Tlist_Show_One_File = 1
    " 如果taglist是最后一个窗口，则退出vim
    let Tlist_Exit_OnlyWindow = 1
    " 在右侧窗口中显示taglist
    let Tlist_Use_Right_Window = 1
    " 打开taglist时，光标保留在taglist窗口
    let Tlist_GainFocus_On_ToggleOpen = 1
    "设置关闭和打开taglist窗口的快捷键
    nnoremap <leader>tl : Tlist<CR>
"}

"winmanager{
    " 将TagList窗口和netrw窗口整合起来
    let g:winManagerWindowLayout='FileExplorer|TagList'
    " 进入vim时自动打开winmanager
    " NOTE: 这条命令要配合修改 winmanager.vim文件
    let g:AutoOpenWinManager = 1
    "WMToggle的快捷键
    nnoremap <leader>wm :WMToggle<CR>
"}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set autoindent  "set ai

" 设置tab缩进为空格
set expandtab "set et
" 设置换行自动缩进为4个空格
set shiftwidth=4
" 设置tab键缩进为4个空格的距离，vim默认是8
set tabstop=4  "set ts=4
" 敲入tab键时,一个实际占有的列数
set softtabstop=4
" 解决自动换行格式下, 如折行之后高在超过窗口高度看不到最后一行的问题
set display=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax on  "syn on
" 背景设为黑色
set background=dark
" 设置配色方案
" colorscheme slate
colorscheme desert

" 代码折叠.使用'za'/'zc'(组合键: z+a)来打开和折叠代码
set foldmethod=indent
set foldlevel=99


