au BufRead,BufNewFile *.tmpl,*.html,*.txt,*.send,*.ok,*.form,*.visu
    \ if (version < 700) |
	\     set ft=templeet |
	\ elseif (getline(2) =~? "^<rss ") |
    \     set ft=xml.templeet |
    \ else |
    \     set ft=html.templeet |
    \ endif
