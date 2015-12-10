execute pathogen#infect()
set encoding=utf-8
syntax on
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
inoremap jk <ESC>
let mapleader = "\<Space>"

nmap <leader>T :enew<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>l :bnext<cr>
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFocus<cr>

nmap <F8> :TagbarToggle<CR>

filetype plugin indent on

vnoremap . :norm.<CR>
set number
set hidden
set confirm

"set foldmethod=syntax
"set nofoldenable
"set foldlevel=2
let g:airline_powerline_fonts=1
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"let g:NERDTreeWinSize = 40
"nmap <silent> <leader>d <Plug>DashSearch
let b:javascript_fold=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" use jshint
let g:syntastic_javascript_checkers = ['jshint']
"let g:loaded_youcompleteme = 1
"let g:ycm_register_as_syntastic_checker = 0
" show any linting errors immediately

set conceallevel=1
set concealcursor=nvic
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"


"let a:al settings. Will keep things concealed
" even when your cursor is on top of them.
 
" vim-javascript conceal settings.
"let g:javascript_conceal_function = "λ"
"let g:javascript_conceal_this = "@"
"let g:javascript_conceal_return = "<"
"let g:javascript_conceal_prototype = "#" = 1
