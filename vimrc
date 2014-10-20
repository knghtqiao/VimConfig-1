" Config for Vim pathogen plugin to manage other plugins 
" Make sure they are at the top of this file
filetype off
call pathogen#infect()
call pathogen#helptags()

" My Custom mapping. To solve the error when use vim:
" Error detected while processing /home/maxime/.vim/bundle/tasklist/plugin/tasklist.vim
nnoremap <leader>v <Plug>TaskList

" Set Vim help to Chinese and utf-8 encoding
" if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
" endif

" Syntax Highlight
syntax on

" Test: add a command- :Status
command! Status echo "All systems are go!"
