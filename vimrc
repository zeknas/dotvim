set nocompatible
filetype on
filetype plugin on
syntax on
set background=dark
highlight Pmenu guibg=brown gui=bold
highlight Folded ctermfg=DarkRed
" "set gfn=Inconsolata\ 12
set gfn=DejaVuSansMono
set ts=2 sw=2 ai si ic expandtab
set incsearch
set formatoptions=croqtn
autocmd FocusLost *.html :up
let mapleader=","
"	" Highlight a particular csv column (put in .vimrc)
"function! CSVH(x)
"	execute 'match Keyword /^\([^,]*,\)\{'.a:x.'}\zs[^,]*/'
"	execute 'normal ^'.a:x.'f,'
"	endfunction
"command! -nargs=1 Csv :call CSVH(<args>)
"	set dictionary=/usr/share/dict/words
"	set complete-=k complete+=k
"	" Insert a single char
"	noremap <Leader>i i<Space><Esc>r
"	" Split the line
"	nmap <Leader>n ,i<CR>
"	noremap <Leader>dbl :g/^$/d<CR>:nohls<CR>
"	noremap <Leader>enc :<C-w>execute
"	\ substitute(":'<,'>s/^.*/#&#/ \| :nohls", "#", input(">"), "g")<CR>
"	noremap <Leader>ed :e <C-r>=expand("%:p:h")<CR>/<C-d>
"	if v:version >= 700 && has("eval")
"fun! SuperYank(offset)
"	let l:cursor_pos = col(".")
"	let l:this_line = line(".")
"	let l:source_line = l:this_line + a:offset
"	let l:this_line_text = getline(l:this_line)
"let l:source_line_text = getline(l:source_line)
"	let l:add_text = ""
"
"	let l:motion = "" . nr2char(getchar())
"	if -1 != match(l:motion, '\d')
"	let l:count = 0
"	while -1 != match(l:motion, '\d')
"	let l:count = l:count * 10 + l:motion
"	let l:motion = "" . nr2char(getchar())
"	endwhile
"	else
"	let l:count = 1
"	endif
"
"	if l:motion == "$"
"let l:add_text = strpart(l:source_line_text, l:cursor_pos - 1)
"	elseif l:motion == "w"
"let l:add_text = strpart(l:source_line_text, l:cursor_pos - 1)
"	let l:add_text = substitute(l:add_text,
"			\ '^\(\s*\%(\S\+\s*\)\{,' . l:count . '}\)\?.*', '\1', '')
"			elseif l:motion == "f" || l:motion == "t"
"			let l:add_text = strpart(l:source_line_text, l:cursor_pos - 1)
"			let l:char = nr2char(getchar())
"			let l:pos = matchend(l:add_text,
"				\ '^\%([^' . l:char . ']\{-}' . l:char . '\)\{' . l:count . '}')
"				if -1 != l:pos
"				let l:add_text = strpart(l:add_text, 0, l:motion == "f" ? l:pos : l:pos - 1)
"				else
"				let l:add_text = ''
"				endif
"				else
"				echo "Unknown motion: " . l:motion
"				endif
"
"				if l:add_text != ""
"				let l:new_text = strpart(l:this_line_text, 0, l:cursor_pos - 1) .
"				\ l:add_text . strpart(l:this_line_text, l:cursor_pos - 1)
"				call setline(l:this_line, l:new_text)
"				call cursor(l:this_line, l:cursor_pos + strlen(l:add_text))
"				endif
"				endfun
"
"				inoremap <C-g>y <C-\><C-o>:call SuperYank(-1)<CR>
"				inoremap <C-g>e <C-\><C-o>:call SuperYank(1)<CR>
"			endif


nmap <F2> I//<Esc>
nmap <F3> _xx
nmap <F4> vi{=
" remplace [type] pour doxygen
" nmap <F5> :execute substitute(":s/\\[type\\]/#/","#",input("type:"),"g")<CR>
" if has("multi_byte")
"set encoding=utf-8
"set fileencoding=utf-8
" else
" 	echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
" 		endif
" colorscheme BlackSea
map <F8> :FuzzyFinderFile <C-r>=fnamemodify(getcwd(), ':p')<CR><CR>
map <S-F8> :set paste<CR>
map <S-F9> :set nopaste<CR>
imap <S-F9> <nop>
nmap <F12> Va{zf
map <F11> :tabnext<CR>
map <S-F11> :tabprevious<CR>
map <F9> :tabfirst<CR>
set pastetoggle=<S-F9>
set foldmethod=marker
map <Leader>x :set filetype=xhtml<CR>
map <Leader>j :set filetype=javascript<CR>
map <Leader>p :set filetype=php<CR>
map <Leader>c :%s/\s[a-zA-Z]*=""//gc<CR>
imap <C-f> <Esc>A
"command -nargs=+ SReplace call StepReplace(<f-args>)
""makes use of register y
"function StepReplace(...)
"  if a:0 == 1
"    let @y = input("Replace with: ", @y)
"    let y = @y
"    if @y =~ "\\d\\+$"
"      let n = substitute(@y, ".\\{-}\\(\\d\\+\\)$", "\\1", "") + a:1
"      let @y = substitute(@y, "\\(.\\{-}\\)\\d\\+$", "\\1".n, "")
"    endif
"    return y
"  elseif a:0 == 3
"    let @y = a:2
"    execute "%s/".a:1."/\\=StepReplace(".a:3.")/".(&gdefault ? "" : "g")."c"
"  else
"    echo "Usage: SReplace <search> <substitute> <increment>"
"  endif
"endfunction
" noremap <C-J> <C-W>j<C-W>_
" noremap <C-K> <C-W>k<C-W>_
" noremap <C-H> <C-W>h
" noremap <C-L> <C-W>l
" MiniBufExplorer
let g:miniBufExplSplitBelow=1
let g:miniBufExplorerMoreThanOne=1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
map <Leader>n :MBEbn<CR>
map <Leader>p :MBEbn<CR>
"inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
"inoremap {{ {
"inoremap {} {}
"inoremap ( ()<Left>
"inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"inoremap /*          /**/<Left><Left>
"inoremap /*<Space>   /*<Space><Space>*/<Left><Left><Left>
"inoremap /*<CR>      /*<CR>*/<Esc>O
"inoremap <Leader>/*  /*
au BufWritePost *.tagada :Loremipsum
