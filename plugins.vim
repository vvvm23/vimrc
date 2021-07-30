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
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
"Plug 'deoplete-plugins/deoplete-dictionary', { 'for': [ 'markdown', 'text', 'tex' ] }
call plug#end()

" vimtex settings
let g:vimtex_view_general_viewer = 'zathura'

" deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/usr/local/src/rust/src'

" pandoc settings
let g:pandoc#modules#disabled = ['folding']
"let g:pandoc#command#autoexec_on_writes = 0
"let g:pandoc#command#prefer_pdf = 0
