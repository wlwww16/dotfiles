call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme='behelit'

set mouse=a
set guicursor=
set relativenumber

colorscheme gruvbox
