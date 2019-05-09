"neovim config

"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
"setup vim-plug {{{

"Note: install vim-plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
"}}}
"
"Plug Packages {{{
" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'junegunn/limelight.vim'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'plasticboy/vim-markdown'
" For async completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" For Denite features
Plug 'Shougo/denite.nvim'

"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Color scheme
Plug 'joshdick/onedark.vim'

" go
"" Go Lang Bundle
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tweekmonster/hl-goimport.vim', {'for': 'go'}
Plug 'buoto/gotests-vim', {'for': 'go'}

" html
"" HTML Bundle
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

"Css
Plug 'ap/vim-css-color'

" javascript
"" Javascript Bundle
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'posva/vim-vue'
Plug 'MaxMEllon/vim-jsx-pretty'

"Python
Plug 'vim-python/python-syntax'

" typescript
"" Typescript support
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': 'sh install.sh'}

call plug#end()
"}}}
" Required:
filetype plugin indent on

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"

set encoding=utf-8
set fileencoding=utf-8
set binary
set ttyfast
set textwidth=100
set signcolumn=yes

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

" Better display for messages
set cmdheight=2

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac

set shell=/bin/sh

"*****************************************************************************
"" Settings
"*****************************************************************************

set ruler
set number
set colorcolumn=100
set nowrap
set smartindent

"" Copy/Paste/Cut
set clipboard+=unnamedplus

let no_buffers_menu=1

" color
set termguicolors
syntax on

"if strftime('%H') >= 7 && strftime('%H') < 19
"  set background=light
"else
"  set background=dark
"endif

colorscheme onedark

if !has("gui")
  let g:CSApprox_loaded = 1
endif

" Lightline
let g:lightline = { 'colorscheme': 'onedark' }

"IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"Close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.jsx,*.js'

" Ale
let g:ale_linters = {
      \ 'ansible': ['ansible-lint'],
      \ 'html': ['htmlhint'],
      \ 'css': ['csslint'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tslint'],
      \ 'python': ['flake8'],
      \ 'go': ['golint'],
      \ 'vue': ['eslint'],
      \ '*': ['trim_whitespace',
      \ 'remove_trailing_lines']
      \}
let g:ale_fixers = {
      \ 'html': ['prettier'],
      \ 'css': ['prettier'],
      \ 'go': ['gofmt'],
      \ 'javascript': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'markdown': ['prettier'],
      \ 'python': ['black'],
      \ '*': ['trim_whitespace', 'remove_trailing_lines']
      \}

let g:ale_linters_explicit = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_lint_delay = 100
let g:ale_lint_on_text_changed = 'always'

let g:python_highlight_all = 1
let g:yats_host_keyword = 1
"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite<Paste>
noremap <silent> <C-n> :NERDTreeFind<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" Vue
let g:vue_disable_pre_processors=1

" go & vim-go
"
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
"*****************************************************************************
"" Functions
"*****************************************************************************

function! RunLint()
    "Save current cursor position"
    let l:winview = winsaveview()
    "run eslint fix on current buffer"
    ! npm run lint
    "Restore cursor position"
    call winrestview(l:winview)
endfunction
command! RunLint :call RunLint()

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Reduce delay when switching between modes.
" (Shamely stolen from https://github.com/nickjj/dotfiles)
augroup NoInsertKeycodes
  autocmd!
  autocmd InsertEnter * set ttimeoutlen=0
  autocmd InsertLeave * set ttimeoutlen=500
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Clear search highlight with two <esc>
nmap <esc><esc> :noh<cr>

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" javascript
let g:javascript_enable_domhtmlcss = 1

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
