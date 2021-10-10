set mouse=a
""" Neovim init.vim

""" Vim-Plug
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
"Theme
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
"Language support
"Plug 'liuchengxu/vim-which-key'
"Plug 'justinmk/vim-sneak'


call plug#end()
"""['|', '¦', '┆', '┊']"""
let g:indentLine_char = '¦'
""" Main Configurations
set encoding=utf8
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set noshowmode
set formatoptions-=ro

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
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)

" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)
" end ultisnips

" theme
source $HOME/.config/nvim/themes/onedark.vim
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
" set t_Co=256
" end theme

source $HOME/.config/nvim/plug-config/coc.vim
let g:coc_global_extensions = [
            \ 'coc-pyright',
            \ 'coc-json',
            \ 'coc-snippets',
            \ 'coc-git',
            \ 'coc-marketplace',
            \ ]

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

" Nerdtree configuration
" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-n> :NERDTreeToggle<CR>


""" Mapping Keystrokes

" navigate split pane vim
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
