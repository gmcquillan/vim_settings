" Disable compatibility mode
set nocp
filetype off

" pathogen
"let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
"call pathogen#infect()                      " load everyhting else
"call pathogen#helptags()                    " load plugin help files

" code folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=4

" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins

" colorpack
"colorscheme vibrantink

" gundo
nnoremap <F5> :GundoToggle<CR>

" lusty
set hidden

" pep8
let g:pep8_map='<leader>8'

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
