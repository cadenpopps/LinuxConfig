
syntax on
set noswapfile "remove swapfile
set nocompatible
set number
set ttyfast

"NERDTree
autocmd VimEnter * NERDTree

"Indent/tab stuff
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

colorscheme cadenpopps

