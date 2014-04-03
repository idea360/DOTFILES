syntax on

filetype on
filetype plugin on

set background=dark
":highlight Normal ctermfg=black ctermbg=darkblue
:hi Comment ctermfg=DarkGreen ctermbg=None

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

nnoremap  ;  :
nnoremap  :  ;

nnoremap    v   <C-V>
nnoremap <C-V>     v
"vnoremap    v   <C-V>
"vnoremap <C-V>     v
nnoremap    T      gT
nnoremap    gT     T
nnoremap    tt      gt
nnoremap    gt      tt

augroup NoSimultaneousEdits
    autocmd!
    autocmd SwapExists * let v:swapchoice = 'o'
    autocmd SwapExists * echomsg ErrorMsg
    autocmd SwapExists * echo 'Duplicate edit session (readonly)'
    autocmd SwapExists * echohl None
    autocmd SwapExists * sleep 2
augroup END
