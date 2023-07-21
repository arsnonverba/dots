"disable compatibility with vi which can cause unexpected issues.
set nocompatible

" enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" enable plugins and load plugin for the detected file type.
filetype plugin on

" load an indent file for the detected file type.
filetype indent on

" turn syntax highlighting on.
syntax on

" add numbers to each line on the left-hand side.
set number

" set shift width to 4 spaces.
set shiftwidth=4

" set tab width to 4 columns.
set tabstop=2

" use space characters instead of tabs.
set expandtab

" do not save backup files.
set nobackup

" do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" while searching though a file incrementally highlight matching characters as you type.
set incsearch

" ignore capital letters during search.
set ignorecase

" override the ignorecase option if searching for capital letters.
" this will allow you to search specifically for capital letters.
set smartcase

" use highlighting when doing a search.
set hlsearch

" set the commands to save in history default number is 20.
set history=1000

" enable auto completion menu after pressing TAB.
set wildmenu

" make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" there are certain files that we would never want to edit with Vim.
" wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.dmg,*.flv,*.img,*.xlsx

" more powerful backspace
set backspace=indent,eol,start

" set colors
set termguicolors

" hide insert status
set noshowmode

" fix issue with syntax highlighting
set re=0

" default colorscheme
colorscheme catppuccin_macchiato

" ALE --------------------------------------------------------------- {{{

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_disable_lsp = 1

" }}}


" NERDTREE --------------------------------------------------------------- {{{

" start nerdTree when vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" }}}


" LIGHTLINE --------------------------------------------------------------- {{{

" lightline fix
set laststatus=2
" lightline layout and colorscheme
let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
      \             [ 'lineinfo' ],
      \             [ 'percent' ],
	  \             [ 'fileformat', 'fileencoding', 'filetype'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'component_expand': {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ },
      \ }

let g:lightline#ale#indicator_checking = "\uE003"
let g:lightline#ale#indicator_infos = "\uE05"
let g:lightline#ale#indicator_warnings = "\uE009"
let g:lightline#ale#indicator_errors = "\uE00A"
let g:lightline#ale#indicator_ok = "\uE276"

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'itchyny/lightline.vim'

Plug 'catppuccin/vim', { 'as': 'catppuccin' }

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-eunuch'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

Plug 'maximbaz/lightline-ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/adelarsq/vim-matchit'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" type jj to insert mode quickly
inoremap ,, <esc>

" set the backslash as the leader key.
let mapleader = ","

" yank from cursor to the end of line.
nnoremap Y y$

" press the space bar to type the : character in command mode.
nnoremap <space> :

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
autocmd!
autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" }}}
"
"
