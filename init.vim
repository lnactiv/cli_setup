" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'
call plug#end()

" Basic Config
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set number
set mouse=a

set relativenumber
nmap <C-L> :set invrelativenumber<CR>

syntax on
colorscheme onehalfdark
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

let g:lightline = { 'colorscheme': 'onehalfdark' }
