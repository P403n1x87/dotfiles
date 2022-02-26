set encoding=utf-8
set hidden

set number

set splitbelow
set splitright


call plug#begin('~/.vim/plugged')

" Python
Plug 'psf/black'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Git
Plug 'tpope/vim-fugitive'

" Editor
Plug 'severin-lemaignan/vim-minimap'
Plug 'sheerun/vim-polyglot'
" Plug 'phanviet/vim-monokai-pro'
Plug 'sickill/vim-monokai'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'enricobacis/vim-airline-clock'

" Haskell
Plug 'neovimhaskell/haskell-vim'

call plug#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
let g:mkdp_auto_close = 1

" Run Black on save
autocmd BufWritePost *.py silent! execute ':Black'

" Open NERDTree by default
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree

" Set ZSH as default shell
set shell=/usr/bin/zsh

let python_highlight_all=1
syntax on

" Theme
colorscheme monokai
highlight Normal  ctermbg=none
highlight NonText ctermbg=none

set colorcolumn=80

" Keyboard shortcuts
nmap <Leader><Bslash>         :NERDTreeToggle<CR>
nmap <Leader>t                :sp +te <bar> :resize 12<CR>
nmap <F8>                     :TagbarToggle<CR>

tmap <Esc>                    <C-\><C-n>

nnoremap <M-PageUp>           :bprevious<CR>
nnoremap <M-PageDown>         :bnext<CR>

" C
autocmd FileType c setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
