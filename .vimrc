" Disable compatibility mode
set nocp
filetype off

" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files

" code folding
"set foldmethod=indent
"set foldlevel=2
"set foldnestmax=4

" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab
"
" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256

" Wrapping and tabs.
set tw=78 ts=4 sw=4 sta et sts=4 ai
"

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins
" More syntax highlighting.
let python_highlight_all = 1


" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

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

" Syntastic settings

let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1
