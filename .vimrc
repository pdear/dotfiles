" Basic generic settings
syntax on
set ts=4
set sw=4
set expandtab
set nu
set mouse=a
set ruler
set autoindent
set background=dark

autocmd FileType make set noet

" Strip trailing whitespace
autocmd FileType c,cpp,python,perl,java,sh,verilog autocmd BufWritePre <buffer> :%s/\s\+$//e

"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/

autocmd BufWritePre * :%s/\s\+$//e

" set tab size to 2 for HDLs, and HTML
autocmd FileType vhdl,html set ts=2
autocmd FileType vhdl,html set sw=2

" Use kernel style for C
autocmd FileType c set noet
autocmd FileType c set ts=8
autocmd FileType c set sw=8

autocmd FileType c,cpp set cindent

" Golang style
autocmd FileType go set noet

" GVIM settings
if has("gui_running")
	set guifont=Consolas:h11:cANSI
    colorscheme desert
endif
