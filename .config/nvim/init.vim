call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'rrethy/vim-illuminate'
Plug 'joeytwiddle/sexy_scroller.vim'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:gruvbox_italic = 1
let g:SexyScroller_EasingStyle = 4

set mouse=a
set guicursor=
set relativenumber
set clipboard=unnamedplus

nnoremap <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox
