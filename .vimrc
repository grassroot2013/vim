syntax enable



set backspace=indent,eol,start
let mapleader = ","
set number




"-------------Visuals--------------------"

colorscheme atom-dark-256
set t_CO=256
set guifont=Fira_Code:h17

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"--------------Searching------------------"
set hlsearch
set incsearch



"-------------Split Management-----------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


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

