" 0xBooper's
" .-. .-..----..----. .-. .-..-..-.   .-.
" |  `| || {_ /  {}  \| | | || ||  `.'  |
" | |\  || {__\      /\ \_/ /| || |\ /| |
" `-' `-'`----'`----'  `---' `-'`-' ` `-'
"  .---.  .----. .-. .-..----..-. .---.  
" /  ___}/  {}  \|  `| || {_  | |/   __} 
" \     }\      /| |\  || |   | |\  {_ } 
"  `---'  `----' `-' `-'`-'   `-' `---'  


" Plugin Manager (vim-plug)
call plug#begin('~/.config/nvim/autoload/plugged')

" Editing-related
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'romgrk/barbar.nvim'

" Autocomplete-related
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
Plug 'jiangmiao/auto-pairs' 
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" Development-related
Plug 'maksimr/vim-jsbeautify'

" Theme-related
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'xiyaowong/nvim-transparent'

call plug#end()

let mapleader=" "

" Font stuff
set guifont=Hack\ Nerd\ Font:h14


" Configure themes
let g:lightline = {'colorscheme': 'tokyonight'}
colorscheme tokyonight
let g:tokyonight_transparent = v:true

" Basic settings
syntax on " Enable syntax highlighting
set mouse=a "Enable mouse
set noerrorbells " Remove error sounds
set expandtab
set tabstop=2 softtabstop=2 " Tabs
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

" Map alt-j to move a line down, and alt-k to move a line up
" Taken from vim tips wiki
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

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
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Barbar config
"
"
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Enable/disable close button
let bufferline.closable = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Bufferline icons
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" Enable/disable icons
let bufferline.icons = v:true

" Barbar mappings
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
