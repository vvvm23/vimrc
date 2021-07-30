" load plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'rlue/vim-barbaric'
Plug 'tpope/vim-unimpaired'
Plug 'dikiaap/minimalist'
Plug 'lervag/vimtex'
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'sebastianmarkow/deoplete-rust'
"Plug 'deoplete-plugins/deoplete-dictionary', { 'for': [ 'markdown', 'text', 'tex' ] }
call plug#end()

" vimtex settings
let g:vimtex_view_general_viewer = 'zathura'

" deoplete settings
let g:deoplete#enable_at_startup = 1
