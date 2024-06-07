"Pluggins
call plug#begin()

Plug 'SirVer/ultisnips'
Plug 'tpope/vim-dispatch'

call plug#end()

"Editor settings
set nocp nu rnu ts=4 sw=4 si lbr so=5 bs=2 ru sc wmnu is mouse=a
set bg=light cb=unnamedplus
filetype plugin indent on
syntax on

"Keybinds
inoremap {<CR> {<CR>}<Esc>O
nnoremap <C-a> <Esc>ggVG<CR>
nnoremap <TAB> %

nnoremap <F1> <nop>
inoremap <F1> <nop>

"Compile and Run
set makeprg=g++\ -std=c++17\ -O2\ %\ -o\ %<
autocmd filetype cpp nnoremap <F1> :w <bar> Make <CR>
autocmd filetype cpp nnoremap <F2> :vertical terminal ++shell ++cols=40 ./%<<CR>
autocmd filetype cpp nnoremap <F3> :!./%< <CR>
