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

" autoremove whitespace -- *.md (markdown) is detected as modula2
autocmd FileType javascript,yaml,html,modula2,css,less,sql,bash,sh autocmd BufWritePre <buffer> :%s/\s\+$//e

" turn on syntax highlighting
syntax on

" auto detect filetype based on their extension
filetype plugin indent on

" ignore folders that will never be opened
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar.gz,*/node_modules/*,*/bin/*

" autoremove whitespace -- *.md (markdown) is detected as modula2
autocmd FileType javascript,html,modula2,css,less autocmd BufWritePre <buffer> :%s/\s\+$//e

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
Plug 'jelera/vim-javascript-syntax'
Plug 'https://github.com/Shutnik/jshint2.vim'
Plug 'leafgarland/typescript-vim'
Plug 'grvcoelho/vim-javascript-snippets'

" Typescript Plugs
Plug 'Quramy/tsuquyomi'

" LESS support (syntax)
Plug 'genoma/vim-less'

" JSON Plug
" Plug 'elzr/vim-json'

" Easy align
Plug 'junegunn/vim-easy-align'

" Polyglot Language Pack
Plug 'sheerun/vim-polyglot'

" More Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'lokaltog/vim-distinguished'
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'

" support for comments (gcc)
Plug 'tpope/vim-commentary'

" tern support in vim
" Plug 'ternjs/tern_for_vim'

" asciidoc support
Plug 'asciidoc/vim-asciidoc'

" Repeatable Actions
Plug 'tpope/vim-repeat'

" Universal Text Linking
Plug 'vim-scripts/utl.vim'

" You Complete Me
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" vim-orgmode
Plug 'jceb/vim-orgmode'

" JSX Syntax Highlighting
Plug 'chemzqm/vim-jsx-improve'

" use local plugin for eslint
" Plug 'mtscout6/syntastic-local-eslint.vim'

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
      \'dir' : 'bower_components$\|dest$\|dist$\|vendor$\|node_modules$\|bin$|\v[\/]\.(git|hg|svn)$',
      \}

" set the colorscheme
colorscheme seoul256
set background=dark

" use eslint for javascript
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" set 80 character color column highlight
let &colorcolumn="80,".join(range(120,999),",")

" turn on spellcheck!
set spell

" make cursors easier to see
set cursorline
