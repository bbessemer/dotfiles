
set encoding=utf8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set modeline
set modelines=10
set pastetoggle=<F3>
set number
set relativenumber

" download vim-plug and reload if not already available
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin(stdpath('data') , '/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" nvim-tree
let g:nvim_tree_width = 30
let g:nvim_tree_ignore = ['.git']
let g:nvim_tree_gitignore = 1
let g:nvim_tree_auto_open = 1
let g:nvim_tree_show_icons = { 'git': 0, 'folders': 0, 'files': 0, 'folder_arrows': 1 }

noremap <C-n> :NvimTreeToggle<CR>
