set nocompatible              " be iMproved, required
set clipboard=unnamed
filetype off                  " required

command! MakeTags !ctags -R --exclude=node_modules --exclude=release --exclude=.git --exclude=out
set path+=**
noremap tt g<C-]>
nnoremap ,html :-1read $HOME/.vim/templates/html5.html<CR>4ko
" set the runtime path to include Vundle and initialize
"iabbrev html5 <!DOCTYPE HTML><CR><html><CR><head><CR><meta charset="utf-8"><CR><title><CR></title><CR><meta name="description" content="HTML5 Template"><CR><meta name="author" content="M. Fatih KILIÇ"><CR><link rel="stylesheet" href=""><CR></head><CR><body><CR><CR><CR><script src=""></script><CR></body><CR></html>4ji
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Chiel92/vim-autoformat'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Quramy/tsuquyomi'
"Plugin 'Quramy/tsuquyomi-vue'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'mxw/vim-jsx'
"Plugin 'othree/yajs.vim'
"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
syntax enable

"-----GENERAL-----
        inoremap jk <ESC>
        let mapleader = "\<Space>"
        vnoremap . :norm.<CR>
        set hidden
        set undofile
        set undodir=~/.vim/.undo//
        set directory=~/.vim/.swp//
        set backupdir=~/.vim/.backup//
        set lazyredraw          " redraw only when we need to.
"------THEME------
        set background=dark
"        set t_Co="256"
        let g:solarized_termtrans = 1
        let g:solarized_visibility = "high"
        let g:solarized_contrast = "high"
        let g:solarized_termcolors=256
        colorscheme solarized
"        set guifont=Source\ Code\ Pro\ for\ Powerline:h14
        set number
        set showcmd             " show command in bottom bar
        set cursorline          " highlight current line
        set wildmenu            " visual autocomplete for command menu
        set laststatus=2
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
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
"----- CTRLP ------
"        let g:ctrlp_map = '<c-p>'
"        let g:ctrlp_cmd = 'CtrlP'
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
"-----NERD TREE------
        nmap <leader>nt :NERDTreeToggle<cr>
        nmap <leader>nf :NERDTreeFocus<cr>
"-----EDIT / RELOAD .vimrc
        nmap <silent> <leader>ev :e $MYVIMRC<CR>
        nmap <silent> <leader>sv :so $MYVIMRC<CR>
"-----TAGBAR-----
        nmap <leader>tb :TagbarToggle<CR>
"----TABS-----
        set tabstop=4       " number of visual spaces per TAB
        set softtabstop=4   " number of spaces in tab when editing
        set shiftwidth=4 " show existing tab with 4 spaces width
        set expandtab " On pressing tab, insert 4 spaces
"----ENCODING---
        nnoremap <F2> :e ++enc=windows-1254<CR>
        nnoremap <F3> :e ++enc=utf-8<CR>
"----FOLDING----
        "set foldmethod=syntax
        "set foldenable
        "set foldlevelstart=10
        "set foldnestmax=10
        "set foldlevel=2
"----PLUGIN : AIRLINE ----
        let g:airline_powerline_fonts=1
        let g:airline#extensions#tabline#enabled = 1 "Enable the list of buffers
        let g:airline#extensions#tabline#fnamemod = ':t' "Show just the filename
        let g:airline#extensions#tagbar#enabled = 1
"-----PLUGIN : vim-javascript-----
        "set conceallevel=1
        "set concealcursor=nvic
"        let g:javascript_conceal_function   = "ƒ"
"        let g:javascript_conceal_null       = "ø"
"        let g:javascript_conceal_this       = "@"
"        let g:javascript_conceal_return     = "⇚"
"        let g:javascript_conceal_undefined  = "¿"
"        let g:javascript_conceal_NaN        = "ℕ"
"        let g:javascript_conceal_prototype  = "¶"
"        let g:javascript_conceal_static     = "•"
"        let g:javascript_conceal_super      = "Ω"
"-----PLUGIN : SYNTASTIC -----
        let g:syntastic_check_on_wq = 0
        "let g:syntastic_javascript_checkers = ['eslint'] " use jshint
        let g:syntastic_javascript_checkers = ['jshint'] " use jshint
"        let g:jsx_ext_required = 0 " Allow JSX in normal JS files
        "let g:syntastic_always_populate_loc_list = 1
        "let g:syntastic_auto_loc_list = 1
        "let g:syntastic_check_on_open = 1
        "let g:syntastic_auto_jump = 2
"-----PLUGIN : TERN -----
        let g:tern_show_argument_hints='on_hold'
        nnoremap <silent> <leader>td :TernDef<cr>
        nnoremap <silent> <leader>ts :TernDefSplit<cr>
        nnoremap <silent> <leader>tr :TernRefs<cr>
        "let g:tern_map_prefix = '<leader>'
"-----PLUGIN : TAGBAR ------
        nnoremap <F8> : TagbarToggle
"-----PLUGIN : YCM -----
        let g:ycm_autoclose_preview_window_after_insertion = 1
        let g:ycm_autoclose_preview_window_after_completion = 1

"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"let g:NERDTreeWinSize = 40
"nmap <silent> <leader>d <Plug>DashSearch
"let b:javascript_fold=1
"
"let g:loaded_youcompleteme = 1
"let g:ycm_register_as_syntastic_checker = 0
" show any linting errors immediately


"let g:dbext_default_profile_cfx='type=MYSQL:host=94.73.144.226:user=cfx_admin:passwd=p8oxXmD49beUfCZ:dbname=cfx_db'
let g:tern_map_keys=1

 
