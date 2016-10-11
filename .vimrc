syntax enable


colorscheme desert

set backspace=indent,eol,start
let mapleader = ","
set number



"--------------Searching------------------"
set hlsearch
set incsearch


"--------------Mappings------------------"

"Shortcut to our vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader><space> :nohlsearch<cr>

"-----------------Auto Commands----------"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

