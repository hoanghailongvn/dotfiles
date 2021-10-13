" ~~~ Plugins ~~~
call plug#begin()
Plug 'lervag/vimtex'
Plug 'Sirver/ultisnips'
Plug 'junegunn/fzf'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
Plug 'chrisbra/csv.vim'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
"Plug 'liuchengxu/vim-which-key'
call plug#end()

""" Main Configurations
set mouse=a
set cursorline
set encoding=utf8
set relativenumber
set noshowmode
set formatoptions-=ro
set clipboard=unnamedplus

" Indentation
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

set smartindent
set autoindent
set cindent

" indent plugin
"['|', '¦', '┆', '┊']
let g:indentLine_char = '¦'

" Always show at least two lines above/below the cursor.
set scrolloff=2
" Always show at least one line left/right of the cursor.
set sidescrolloff=5

" ~~~ Theme ~~~
source $HOME/.config/nvim/themes/onedark.vim
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
set t_Co=256
" ~~~ emehT ~~~

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" end vimtex

" ultisnips
let g:UltiSnipsExpandTrigger = "<Nul>"
let g:UltiSnipsJumpForwardTrigger = "<Nul>"
let g:UltiSnipsJumpBackwardTrigger = "<Nul>"
" end ultisnips

" coc.nvim
source $HOME/.config/nvim/plug-config/coc.vim
let g:coc_global_extensions = [
            \ 'coc-pyright',
            \ 'coc-json',
            \ 'coc-snippets',
            \ 'coc-git',
            \ 'coc-marketplace',
            \ ]
" end coc.nvim

" Trailing whitespaces highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
" Remove all trailing whitespaces
nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" end

" Nerdtree
" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-n> :NERDTreeToggle<CR>
" end Nerdtree

" navigate split pane vim
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
