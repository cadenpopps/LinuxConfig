
syntax on
set noswapfile "remove swapfile
set nocompatible
set number
set numberwidth=5
set ttyfast


nmap <C-S-e> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

set runtimepath^=~/.vim/pack/nerdtree/	
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
noremap <C-b> <Esc>:NERDTree<CR>

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

