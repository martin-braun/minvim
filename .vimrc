" This file is not part of your local nvim setup.
" However, it is meant to be uploaded to remote systems
" to let vim behave more like your local nvim setup.
" Local install: cp .vimrc $HOME/
" Remote install: scp .vimrc <alias>:.
set clipboard^=unnamed,unnamedplus
set number
set relativenumber
set nocompatible
filetype on
syntax on
colorscheme habamax
set cursorline
let mapleader = " "
let g:netrw_banner = 0
nnoremap <C-b> <CMD>terminal<CR> " only works when not in a tmux session
tnoremap <Esc> <C-\\><C-n>
nnoremap <leader>b <CMD>ls<CR>
nnoremap <leader>c <CMD>ene<CR>
nnoremap <leader>e :e 
nnoremap <leader>yf <CMD>let @+=expand("%")<CR>
nnoremap <leader>yF <CMD>let @+=expand("%:p")<CR>
nnoremap <leader>x <CMD>bd<CR>
nnoremap <leader>X <CMD>bd!<CR>
nnoremap <leader>ff <CMD>gg=G''<CR>
nnoremap <C-s> <CMD>w<CR>
nnoremap <leader>ss <CMD>wa<CR>
nnoremap <C-w>s <CMD>split<CR><CMD>wincmd j<CR>

nnoremap <C-e> <CMD>Ex %:p:h<CR>
autocmd FileType netrw nnoremap <buffer> <C-e> <CMD>Rex<CR>
