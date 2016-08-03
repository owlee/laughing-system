call pathogen#infect()

" Disable arrow key navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"set mouse=a

"" Show hidden files in ctrlp
let g:ctrlp_show_hidden = 1

"" Remove excess whitespace on save
autocmd BufWritePre * :%s/\s\+$//ge

" Separate configuration for guivim and terminal vim

set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
set autoindent
filetype plugin indent on           " load file type plugins + indentation
set nu
set ruler
set list!                           " Show whitespace char
set listchars=tab:▸\ ,trail:·,eol:¬ " Show whilespace chars char as this tabby symbol here:
let g:indentLine_char = '┆'
set colorcolumn=80                  " Set a 80 char column line
set guifont=Inconsolata:h14         " Inconsolata FTW
set guioptions-=r                   " remove right scroll bar
let g:vim_json_syntax_conceal = 0   " do not hide double quotes

"" System Clipboard Mapping
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=2 shiftwidth=2          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode

"" Add new line without jumping into insert mode
nmap <CR> o<Esc>

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

set path=$PWD/**
set runtimepath^=~/.vim/bundle/ctrlp.vim
