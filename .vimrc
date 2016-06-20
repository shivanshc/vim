set expandtab
set tabstop=4
set shiftwidth=4
retab
set number
set hlsearch
set incsearch
autocmd BufWritePre * :%s/\s\+$//e
