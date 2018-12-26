set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'craigemery/vim-autotag'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

colorscheme 0x7A69_dark

set ruler
set laststatus=2
set showcmd
set showmode
set number
set incsearch
set ignorecase
set hlsearch
set backspace=indent,eol,start
set shiftwidth=2
set autoindent
set tabstop=2
set expandtab
set colorcolumn=100
set wrap
set showmatch
set autoread
set clipboard=unnamedplus

nnoremap <C-Up> <C-e>
nnoremap <C-Down> <C-y>

let g:NERDTreeWinSize=40
let g:NERDTreeMinimalUI=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|out$\|out-user$\|out-userdebug$',
  \ 'file': '\v\.(exe|so|dll|xml)$\|tags$',
  \ }
let g:ctrlp_max_files=0

nmap <F8> :TagbarToggle<CR>

set tags=tags;
nnoremap <C-\> <C-w><C-]><C-w>T

let g:autotagTagsFile=".tags"
