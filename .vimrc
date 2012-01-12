set nocompatible

set backspace=indent,eol,start

set nobackup		
set history=50		
set ruler		
set showcmd		
set incsearch		
"match ErrorMsg '\%>80v.+'

map Q gq

set cc=80

inoremap <C-U> <C-G>u<C-U>

set mouse=a

syntax on
set hlsearch

filetype indent on
filetype plugin on

"if has('gui_running')
"    set background=light
"else
    set background=dark
"endif

let g:solarized_termcolors=16
colorscheme solarized
"set guicursor+=a:blinkon0


set et
set sw=3
set smarttab
set lbr

set t_Co=16

set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

set number

set virtualedit=all

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

function! ToggleBackground()
    if (g:solarized_style=="dark")
        let g:solarized_style="light"
        colorscheme solarized
    else
        let g:solarized_style="dark"
        colorscheme solarized
    endif
endfunction
command! Togbg call ToggleBackground()
nnoremap <F5> :call ToggleBackground()<CR>
inoremap <F5> <ESC>:call ToggleBackground()<CR>a
vnoremap <F5> <ESC>:call ToggleBackground()<CR>

