set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

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
set guioptions-=e

highlight LineNr ctermfg=darkgrey
highlight SignColumn ctermfg=darkgrey

highlight vertsplit ctermfg=grey ctermfg=bg

"--------------Searching------------------"
set hlsearch
set incsearch

"--------------Tabs-----------------------"

set tabstop=4

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
nmap <C-T> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-p> :CtrlP<cr>
nmap <D-e> :CtrlPMRUFiles<cr>


"Maps semicolon to colon
nmap ; :

"-----------Pluggins--------------------"

"/
"/ CtrlP
"/

let g:ctrlp_custom_ignore = "node_modules\DS_Store\|git"


let NERDTreeHijackNeterw = 0

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"-----------------Auto Commands----------"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

