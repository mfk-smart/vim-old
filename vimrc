set nocompatible              " be iMproved, required
filetype off                  " required
set path+=**
noremap tt g<C-]>
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on    " required

set encoding=utf-8
syntax enable

"-----GENERAL-----
        inoremap jk <ESC>
        let mapleader = "\<Space>"
        vnoremap . :norm.<CR>
        set hidden
        set undofile
        set lazyredraw          " redraw only when we need to.
        set number
        set showcmd             " show command in bottom bar
        set cursorline          " highlight current line
        set wildmenu            " visual autocomplete for command menu
        set laststatus=2
"------MOVE AROUND-----
        nnoremap <up> <nop>
        nnoremap <down> <nop>
        nnoremap <left> <nop>
        nnoremap <right> <nop>
        inoremap <up> <nop>
        inoremap <down> <nop>
        inoremap <left> <nop>
        inoremap <right> <nop>
"-----SEARCH------
        set ignorecase
        set incsearch
        nnoremap <leader>, :noh<cr>
        set showmatch
        set hlsearch
"-----BUFFER SWITCH-----
        nmap <leader>T :enew<cr>
        nmap <leader>h :bprevious<cr>
        nmap <leader>l :bnext<cr>
"-----SPLIT SCREEN----
        nnoremap <silent> vv <C-w>v
        nnoremap <C-J> <C-W><C-J>
        nnoremap <C-K> <C-W><C-K>
        nnoremap <C-L> <C-W><C-L>
        nnoremap <C-H> <C-W><C-H>
        set splitbelow
        set splitright
"-----EDIT / RELOAD .vimrc
        nmap <silent> <leader>ev :e $MYVIMRC<CR>
        nmap <silent> <leader>sv :so $MYVIMRC<CR>
"----TABS-----
        set tabstop=4       " number of visual spaces per TAB
        set softtabstop=4   " number of spaces in tab when editing
        set shiftwidth=4 " show existing tab with 4 spaces width
        set expandtab " On pressing tab, insert 4 spaces
"----ENCODING---
        nnoremap <F2> :e ++enc=windows-1254<CR>
        nnoremap <F3> :e ++enc=utf-8<CR>
