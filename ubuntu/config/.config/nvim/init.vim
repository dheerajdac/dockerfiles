set relativenumber
set number
set ruler
set laststatus=2
set title

syntax enable
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
try
    colorscheme desert
catch
endtry
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

set showmatch

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

