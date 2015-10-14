set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar.gz,*/node_modules/*,*/bin/*

" Plugin Configuration
call plug#begin()

" Sensible configuration
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" Ctrl-P Support
Plug 'kien/ctrlp.vim'

" Syntax/Linting
Plug 'scrooloose/syntastic'

" Git Integration
Plug 'tpope/vim-fugitive'

" JavaScript Plugs
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'

" Easy align
Plug 'junegunn/vim-easy-align'

" More Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'lokaltog/vim-distinguished'

call plug#end()


" Editing Configuration

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

set nowrap

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Ctrl-P Ignores
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

filetype plugin indent on
