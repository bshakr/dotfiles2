let mapleader = "\<Space>"        " Set leader to space.

set nocompatible                  " Must come first because it changes other options.
filetype off                  " Required by vundle.

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize.
call vundle#begin()               

Plugin 'gmarik/Vundle.vim'        " Let vundle manage vundle.
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'         " Supercharge vim’s dot command.
Plugin 'thoughtbot/vim-rspec'     " Run rspec from within vim.

call vundle#end()

" let g:ackprg = 'ag --vimgrep'
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrp_use_caching = 0        " Disable ctrp file listing cache.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you’re in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains uppercase letters.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal’s title.


set visualbell                    " No beeping.

set nobackup                      " Don’t make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swapfiles in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs.

set laststatus=2                  " Show the status line all the time.
highlight StatusLine ctermfg=blue ctermbg=yellow  " Highlight the status line
