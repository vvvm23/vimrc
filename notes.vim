" goto and cd to note index
nnoremap <leader>ni :e $NOTES_DIRECTORY/index.md<CR>:cd $NOTES_DIRECTORY<CR>

" Make Ctrlp and vim use ripgrep
if executable('rg')
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_user_caching = 0
    set grepprg=rg\ --color=never\ --vimgrep
endif
set wildignore+=*/.git/*,*/tmp/*,*.swp

" Thus depends on grepprg being set to rg
command! -nargs=1 Ngrep grep "<args>" -g "*.md" $NOTES_DIR
nnoremap <leader>nn :Ngrep 

command! Vlist botright vertical copen | vertical resize 50
nnoremap <leader>v :Vlist<CR>

" Generate ctags silently
nnoremap <leader>tt :silent !ctags -R . <CR>:redraw!<CR>

" Binding for searching tags ("search tag")
nnoremap <leader>st :CtrlPTag<CR>

let g:notes = "$NOTES_DIRECTORY/"
command! -nargs=1 NewZettel :execute ":e" notes . strftime("%Y%m%d%H%M") . "-<args>.md"
nnoremap <leader>nz :NewZettel 

" map find question
nnoremap <leader>nq :vimgrep /\*\*Q\*\*/ %<CR>

" Change directory to directory of current file
nnoremap <leader>cd :cd %:h<CR>

" CtrlP function for inserting a markdown link with Ctrl-X
function! CtrlPOpenFunc(action, line)
   if a:action =~ '^h$'    
      " Get the filename
      let filename = fnameescape(fnamemodify(a:line, ':t'))
	  let filename_wo_timestamp = fnameescape(fnamemodify(a:line, ':t:s/\d\+-//'))

      " Close CtrlP
      call ctrlp#exit()
      call ctrlp#mrufiles#add(filename)

      " Insert the markdown link to the file in the current buffer
	  let mdlink = "[ ".filename_wo_timestamp." ]( ".filename." )"
      put=mdlink
  else    
      " Use CtrlP's default file opening function
      call call('ctrlp#acceptfile', [a:action, a:line])
   endif
endfunction

let g:ctrlp_open_func = { 
         \ 'files': 'CtrlPOpenFunc',
         \ 'mru files': 'CtrlPOpenFunc' 
         \ }

