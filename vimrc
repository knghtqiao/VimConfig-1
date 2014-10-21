" My Custom Configurated Vim
" Zhchnchn <zjl_133@163.com>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Golbal Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Test: add a command- :Status
command! Status echo "All systems are go!"

" Set Vim help to Chinese and utf-8 encoding
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Highlight
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When execute pathogen commands, Filetype detection must be off. 
" So make sure \"filetype off\" is before the pathogen's commands
filetype off
call pathogen#infect()
call pathogen#helptags()

" My Custom mapping. To solve the error when use vim:
" Error detected while processing /home/maxime/.vim/bundle/tasklist/plugin/tasklist.vim
nnoremap <leader>v <Plug>TaskList


