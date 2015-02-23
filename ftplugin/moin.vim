setlocal expandtab
setlocal matchpairs+=<:>

" folding based on headings
setlocal foldlevel=0
setlocal foldmethod=expr
setlocal foldexpr=HeadingLevel(v:lnum)
if (!exists("*HeadingLevel"))
	function HeadingLevel(lnum)
		" number of consecutive '=' at start of line
		let n = strlen(substitute(getline(a:lnum), '[^=].*', '', ''))
		return (n == 0) ? '=' : '>' . n
	endfunction
endif
