set term=xterm-256color
set mouse=a
"set nocompatible
set tabstop=2
set sw=2
set softtabstop=2
"set expandtab
set number
set ic
set scs
set autoindent
set cmdheight=2
map <F5> :wa<enter>:!make clean;make <enter>
map <F7> mzgg=G'z<CR>
map <F6> :setlocal spell spelllang=en_us<enter> :hi clear SpellBad <enter> :hi SpellBad cterm=underline ctermfg=red <enter>
map <F8> :setlocal spell spelllang=de<enter> :hi clear SpellBad <enter> :hi SpellBad cterm=underline ctermfg=red <enter>
syntax enable
map <F9> mzgggqG'z
"filetype plugin indent on
"filetype on
"let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set cursorline
set ruler

set scrolloff=3

nmap <C-l> :tabn<enter>
nmap <C-h> :tabp<enter>

nmap ex :s/\v(<\k*%#\k*>)(\_.{-})(<\k+>)/\3\2\1/

autocmd BufNewFile,BufRead *.js set formatprg=astyle\ -T2p
autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -T2p
autocmd BufNewFile,BufRead *.cc set formatprg=astyle\ -T2p
autocmd BufNewFile,BufRead *.hh set formatprg=astyle\ -T2p
"execute pathogen#infect()
"au FileType javascript call JavaScriptFold()
let $PAGER=''
let NERDTreeIgnore = ['\.aux$', '\.bbl$', '\.log', '\.out', '\.toc$', '\.upa', '\.upb', '\.blg']
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype valai
if &diff
  colorscheme torte
endif

inoremap <c-x><c-k> <c-x><c-k>
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsSnippetDirectories = ['/home/max/.vim/ultisnips']
let g:UltiSnipsSnippetsDir="~/.vim/snips"
let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]
