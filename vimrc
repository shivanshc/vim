set expandtab
set tabstop=4
set shiftwidth=4
retab
set number
set hlsearch
set incsearch
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
augroup filetype_python
    autocmd!
    au FileType python set foldmethod=indent
    au FileType python set foldlevel=99
    "au FileType python set nosmartindent
    au FileType python map <buffer> <leader>8 :call Flake8()<CR>
    " Tell Vim which characters to show for expanded TABs,
    " trailing whitespace, and end-of-lines. VERY useful!
    au FileType python set listchars=trail:_
    au FileType python set list

    " Also highlight all tabs and trailing whitespace characters.
    au FileType python highlight ExtraWhitespace ctermbg=darkred guibg=darkred ctermfg=yellow guifg=yellow
    au FileType python match ExtraWhitespace /\s\+$\|\t/
    au BufWritePost,cursorhold * filetype detect
    "au FileType python colo molokai
augroup END
