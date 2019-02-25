syntax enable
set noswapfile
set nocompatible
set number
set autoindent
set numberwidth=7
set ttyfast

""Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/fzf.vim'

call vundle#end() 
filetype plugin indent on

"End Plugins


"Plugin Config

"NERDTree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
noremap <C-b> <Esc>:NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=0
let NERDTreeShowHidden=1
"Goyo
nnoremap <C-z> :Goyo <bar> highlight StatusLineNC ctermfg=white <CR>



"Keybindings
nnoremap <Leader>n :edit ~/shared/notes/
nnoremap <C-s> <Esc>:w<CR>
nnoremap <C-x> <Esc>:x<CR>
nnoremap <C-q> <Esc>:q!<CR>
nnoremap <C-p> <Esc><C-s>:Files<CR>
nnoremap <C-t> <Esc>20j<S-v>40k=20j
inoremap <C-t> <Esc>20j<S-v>40k=20j
noremap <Leader>t <Esc>gg=G <C-o><C-o>


"Color Config Mappings
inoremap ,lb 189
inoremap ,lg 102
inoremap ,dg 59
inoremap ,lo 224
inoremap ,do 174
inoremap ,r 160


"Split config
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright


"Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set wrap
set linebreak
set backspace=indent,eol,start

"Search
set ignorecase
set incsearch 
set smartcase "case sensitive if search has caps
set showmatch "live highlight search results
set hlsearch "highlight search results
set gdefault "global by default

"Navigation
nnoremap j gj
nnoremap k gk

set virtualedit+=block

"Tags
set tags=tags;/,.tags;/


"Check element
nmap <C-S-e> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

colorscheme cadenpopps
