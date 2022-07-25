" INIT.VIM
" NEOVIM CONFIG
" 0xbooper

" Plugin Manager (vim-plug)
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'scrooloose/nerdtree'
Plug 'xiyaowong/nvim-transparent'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'https://github.com/vim-airline/vim-airline-themes'

call plug#end()

let mapleader=" "

" Configure themes
"let g:airline_theme="ayu_dark"
let g:lightline = {'colorscheme': 'tokyonight'}
colorscheme tokyonight
let g:tokyonight_transparent = v:true

" Basic settings
syntax on " Enable syntax highlighting
set mouse=a "Enable mouse
set noerrorbells " Remove error sounds
set expandtab
set tabstop=4 softtabstop=4 " Tabs
set nowrap "Remove wrapping
set relativenumber " Kewl line numbers
set smartcase " For searching
set noswapfile " Remove swap file
set title " Add a titlebar  
set laststatus=2 " Lightline config"
set noshowmode " Lightline config (remove base mode info"

" Autocmds
autocmd InsertEnter * norm zz " Center document when entering insert mode.

" Mappings
inoremap jk <Esc>
nnoremap <Esc>s :split<Return>
nnoremap <Esc>v :vsplit<Return>

" Map CTRL-X to save and quit
map <C-x> :x<Return>
" Map NERDTree plugin
map  <C-s> :NERDTreeToggle<Return>

" Map split nav
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Some more settings
"set cursorline
"set cursorcolumn
