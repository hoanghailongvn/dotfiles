call plug#begin()

Plug 'lervag/vimtex'
Plug 'Sirver/ultisnips'

"command-line fuzzy finder
Plug 'junegunn/fzf'
"Theme
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
"Language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'liuchengxu/vim-which-key'
Plug 'preservim/nerdtree'

"Test
Plug 'mhinz/vim-startify'
"Plug 'francoiscabrol/ranger.vim'
"Plug 'rbgrouleff/bclose.vim'
"Test
"Plug 'justinmk/vim-sneak'

call plug#end()

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set tabstop=4
set shiftwidth=4
set expandtab

set number
set noshowmode

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:onedark_termcolors=256
set t_Co=256
