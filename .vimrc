set expandtab
set tabstop=4
set shiftwidth=4
retab
set number
set hlsearch
set incsearch
noremap <C-Left><C-w>h
noremap <C-Right><C-w>l
noremap <C-Up><C-w>j
noremap <C-Down><C-w>k
autocmd BufWritePre * :%s/\s\+$//e
