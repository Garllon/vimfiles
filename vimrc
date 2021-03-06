silent! runtime bundles.vim

let mapleader = ","
let g:mapleader = ","

set nocompatible

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set encoding=utf-8
set number
set splitbelow splitright
set t_Co=256

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n
set colorcolumn=80

set nolist

set backspace=indent,eol,start


"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch

" Switch, close buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>c :Bclose<CR>

" move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" indent file and return cursor and center cursor
map   <silent> <F6> mmgg=G`m^zz
imap  <silent> <F6> <Esc> mmgg=G`m^zz

" binding.pry mappings
noremap <leader>p orequire 'pry'; binding.pry<ESC>
noremap <leader>P Orequire 'pry'; binding.pry<ESC>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak,**/docker_app/**
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp
set dir=/tmp

let g:tex_flavor = 'latex'

"  ---------------------------------------------------------------------------
"  Write to write-only files with :sudow
"  ---------------------------------------------------------------------------
cnoremap sudow w !sudo tee % >/dev/null

"  ---------------------------------------------------------------------------
" Plugins
"  ---------------------------------------------------------------------------

runtime! plugin_config/*.vim

set clipboard=unnamed
"  ---------------------------------------------------------------------------
" Syntax
"  ---------------------------------------------------------------------------

syntax enable
set hlsearch

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tex set wrap linebreak nolist
autocmd BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,[Vv]agrantfile,Guardfile,Capfile set filetype=ruby
