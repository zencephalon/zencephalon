set guifont=Envy\ Code\ R\ 8
" set spell spelllang=en_us 
set guioptions-=T
set guioptions+=lrb
set guioptions-=lrb

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>

"highlight OverLength ctermbg=red ctermfg=white guibg=#3c1926
"#592929
"match OverLength /\%81v.\+/
