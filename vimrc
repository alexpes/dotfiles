set mouse=a
set clipboard=unnamed
set history=500 " Sets how many lines of history VIM has to remember
set so=7 " Set 7 lines to the cursor - when moving vertically using j/k
set wildmenu " Turn on the Wild menu
set ruler "Always show current position
set cmdheight=1 " Height of the command bar
set hid " A buffer becomes hidden when it is abandoned
set backspace=eol,start,indent " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases
set incsearch " Makes search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets
set noerrorbells " No annoying sound on errors
set novisualbell " No annoying sound on errors
set belloff=all " No annoying sound on errors
set vb t_vb= " No annoying sound on errors
set tm=500
set number relativenumber
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac " Use Unix as the standard file type
set nobackup " Turn backup off, since most stuff is in SVN, git etc. anyway...
set nowb " Turn backup off, since most stuff is in SVN, git etc. anyway...
set noswapfile " Turn backup off, since most stuff is in SVN, git etc. anyway...
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)
set shiftwidth=4 " 1 tab == 4 spaces
set tabstop=4
set lbr " Linebreak on 500 characters
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set laststatus=2 " Always show the status line
set nocompatible " be iMproved, required
set omnifunc=syntaxcomplete#Complete
set termguicolors
syntax enable " Enable syntax highlighting
filetype plugin indent on " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox' " Theme
    Plug 'arcticicestudio/nord-vim' " Theme
    Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim' 
    Plug 'junegunn/vim-peekaboo'
call plug#end()

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GRAPHICS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
colorscheme nord
set background=dark
" set guifont=Menlo\ Regular:h14
set guifont=Fantasque\ Sans\ Mono:h16

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

map 0 ^
inoremap -- ->
inoremap <C-l> <del>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

noremap H ^
noremap L $
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <tab> >gv
vnoremap <S-Tab> <gv
nnoremap Q @q

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv"

inoremap <C-d> <Del>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

noremap <Leader>y "+y

xnoremap <leader>p "_dP
nnoremap x "_x
nnoremap <leader>d "_d
vnoremap <leader>d "_d

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-\> <C-W>v
map <C--> <C-W>s
map <C-Q> :q!<CR>
 
" preservim/nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" @ terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-g>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-g>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-g>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" junegunn/fzf 
nnoremap <leader><leader> :Files<CR>
