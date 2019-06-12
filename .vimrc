"""""""""""""""""""""""""""""
" jniles's .vimrc
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" Preamble
"""""""""""""""""""""""""""""

" redraw only when we need to
set lazyredraw
set nocursorline
set nocursorcolumn

" turn on spellcheck
" set spell

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" set up the *.vue filetype recognition
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" autoremove whitespace -- *.md (markdown) is detected as modula2
autocmd FileType javascript,yaml,html,modula2,css,less,sql,bash,sh,handlebars autocmd BufWritePre <buffer> :%s/\s\+$//e

" turn on syntax highlighting
syntax on

" auto detect filetype based on their extension
filetype plugin indent on

" ignore folders that will never be opened
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar.gz,*/node_modules/*,*/bin/*

" autoremove whitespace -- *.md (markdown) is detected as modula2
autocmd FileType javascript,html,modula2,css,less,vue autocmd BufWritePre <buffer> :%s/\s\+$//e

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

nnoremap , @@


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
" Plugin Definitions
"""""""""""""""""""""""""""""
call plug#begin()

" Sensible configuration
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-surround', {'for': 'html'}

Plug 'chrisbra/csv.vim', {'for': 'csv'}

" wakatime
Plug 'wakatime/vim-wakatime'

Plug 'posva/vim-vue', {'for': 'vue' }

Plug 'junegunn/goyo.vim'

" airline
Plug 'bling/vim-airline'

" easymotion
Plug 'easymotion/vim-easymotion'

" comments
Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" linting
Plug 'w0rp/ale'

" Ctrl-P Support
Plug 'kien/ctrlp.vim'

Plug 'kristijanhusak/vim-hybrid-material'

" Syntax/Linting
Plug 'ntpeters/vim-better-whitespace'

" Git Integration
" Plug 'tpope/vim-fugitive'

" JavaScript Plugs
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}

" Easy align
Plug 'junegunn/vim-easy-align'

" support handlebars
Plug 'mustache/vim-mustache-handlebars'

" support for comments (gcc)
Plug 'tpope/vim-commentary'

" Repeatable Actions
Plug 'tpope/vim-repeat'

" JSX Syntax Highlighting
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }

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
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

set background=dark
colorscheme hybrid_material

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" configure ALE Linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'

" remap error navigation to ctrl k and ctrl c
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'

" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

let g:airline#extensions#ale#enabled = 1
let g:vue_disable_pre_processors=1
