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

" set undofile
set undofile

" rebind window movement
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" set to system clipboard
set clipboard=unnamedplus

" fix last spelling error
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" disable hlsearch
set nohlsearch

" ignore case when searching
set ignorecase

" set textwidth and spell checking in certain files
autocmd BufReadPre *.txt,*.md,*.tex setlocal textwidth=80 spell

" source note taking settings
source notes.vim
