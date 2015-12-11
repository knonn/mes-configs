" Basic editor stuff
syntax on
set number          " show line numbers
set nofoldenable    " disable folding
set nowrap
set modelines=1
set sidescroll=1    " horizontal scrolling by character
set shell=bash

set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" Airline instead of powerline, simple yet great
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'

" Autocompletion engine
" Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Browsing files & fuzzy file search
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" PEP-8 compliance help
Plugin 'nvie/vim-flake8'
" Plugin 'klen/python-mode'

" Golang usage
Plugin 'fatih/vim-go'

" DVCS : Git, gitgutter for showing the changes beside line numbers
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set encoding
set encoding=utf-8

" Airline Hacks
set laststatus=2                              " without this the status line is not visible
set ttimeoutlen=50                            " to prevent delay when leaving insert mode
let g:airline#extensions#tabline#enabled = 1  " it is disabled by default, so
let g:airline_powerline_fonts=1               " using patched Inconsolata
let g:airline_theme='powerlineish'            " favourite theme
let g:rehash256=1

" Colorscheme
let g:molokai_original=1
colorscheme molokai

" OSX hacks
set backspace=start,eol,indent

" Search customisations
set hlsearch incsearch ignorecase " highlight search, incremental search and ignore case
" double escape for removing search highlights
nnoremap <silent> <Esc><Esc> :let @/=""<CR>

" python hacks
autocmd Filetype python set expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufWritePre * :%s/\s\+$//e

" Backup locations
set backup
set backupdir=~/.vim/backup
set directory=/tmp

" Splitfu
" Just navigate around splits vim way
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" keymaps

" ycm
let g:ycm_key_list_select_completion=['<Tab>', '<Down>']
let g:ycm_key_list_previous_completion=['<S-Tab>', '<Up>']

" UltiSnips stuff
let g:UltiSnipsExpandTrigger="<c-j>"
