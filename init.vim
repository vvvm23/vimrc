filetype on
source plugins.vim

"" standard nvim config ""
" colours
set termguicolors
set t_Co=256
syntax on

set background=dark
colorscheme gruvbox
"hi Normal guibg=NONE ctermbg=NONE
"highlight LineNr ctermfg=NONE ctermbg=NONE
"highlight clear CursorLineNR
"highlight clear LineNR

" character encodings
set nocompatible
set encoding=utf-8

" indent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" scrolloff
set scrolloff=999

" vim timeout
set timeoutlen=1000 ttimeoutlen=10

" line numbers
set number
set relativenumber

" set undofile
set undofile

" set to system clipboard
set clipboard=unnamedplus

" disable hlsearch
set nohlsearch

" ignore case when searching
set ignorecase

" set textwidth and spell checking in certain files
autocmd BufReadPre *.txt,*.md,*.tex setlocal textwidth=80 spell

" set dictionary
set dictionary=/usr/share/dict/british

" source custom bindings
source binds.vim
" source note taking settings
source notes.vim
