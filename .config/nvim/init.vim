call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'ap/vim-css-color'
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdtree'
Plug 'rrethy/vim-illuminate'
Plug 'vimwiki/vimwiki'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'minimalist'
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

set title
set mouse=a
set guicursor=
set relativenumber
set clipboard=unnamedplus

execute "set titleold=".$TERMINAL

nnoremap <C-n> :NERDTreeToggle<CR>

colorscheme monokai
