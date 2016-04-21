"""""""""""""""""""""""""""""
" jniles's .vimrc
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" Preamble
"""""""""""""""""""""""""""""

" redraw only when we need to
set lazyredraw

" turn on spellcheck
set spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" turn on syntax highlighting
syntax on

" auto detect filetype based on their extension
filetype plugin indent on

" ignore folders that will never be opened
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar.gz,*/node_modules/*,*/bin/*

"""""""""""""""""""""""""""""
" Editing Config
"""""""""""""""""""""""""""""

set tabstop=2      " two spaces for each tab
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab      " convert tabs to spaces
set smartindent    " automatically indent based on file type

"""""""""""""""""""""""""""""
" Movement
"""""""""""""""""""""""""""""

" move to the beginning/end of the line easily
" nnoremap B ^
" nnoremap E $

" $/^ shouldn't do anything anymore (superceded by above command)
" nnoremap ^ <nop>
" nnoremap $ <nop>


"""""""""""""""""""""""""""""
" Utilities
"""""""""""""""""""""""""""""

" highlight last inserted text
nnoremap gV `[v`]

" do not wrap text
set nowrap

" make <spacebar> the lead key
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nmap <Leader><Leader> V


"""""""""""""""""""""""""""""
" GUI-Specific Config
"""""""""""""""""""""""""""""

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


"""""""""""""""""""""""""""""
" Plugin Definitions
"""""""""""""""""""""""""""""
call plug#begin()

" Sensible configuration
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" wakatime
Plug 'wakatime/vim-wakatime'

" airline
Plug 'bling/vim-airline'

" easymotion
Plug 'easymotion/vim-easymotion'

" comments
Plug 'scrooloose/nerdcommenter'

" Ctrl-P Support
Plug 'kien/ctrlp.vim'

" Syntax/Linting
Plug 'scrooloose/syntastic'
Plug 'ntpeters/vim-better-whitespace'

" Git Integration
Plug 'tpope/vim-fugitive'

" JavaScript Plugs
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'https://github.com/Shutnik/jshint2.vim'
Plug 'leafgarland/typescript-vim'
Plug 'grvcoelho/vim-javascript-snippets'

" Typescript Plugs
Plug 'Quramy/tsuquyomi'

" LESS support (syntax)
Plug 'genoma/vim-less'

" JSON Plug
Plug 'elzr/vim-json'

" Easy align
Plug 'junegunn/vim-easy-align'

" More Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'lokaltog/vim-distinguished'
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'

" support for comments (gcc)
Plug 'tpope/vim-commentary'

" tern support in vim
Plug 'ternjs/tern_for_vim'

" asciidoc support
Plug 'asciidoc/vim-asciidoc'

call plug#end()


""""""""""""""""""""""""""
" Plugin Configs
""""""""""""""""""""""""""

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Ctrl-P Ignores
let g:ctrlp_custom_ignore = {
      \'dir' : 'bower_components$\|dest$\|dist$\|node_modules$\|bin$|\v[\/]\.(git|hg|svn)$',
      \}

" link jshint2 runtime path
set runtimepath+=~/.vim/bundle/jshint2.vim/

" only lint after saving
let jshint2_save = 1

" set the colorscheme to hybrid (downloaded with Plug)
colorscheme seoul256

" use eslint for javascript
" let g:syntastic_javascript_checkers = ['eslint']

" turn on spellcheck!
set spell
