"neovim config
scriptencoding utf-8
source ~/.config/nvim/plugins.vim

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"

"" Map leader to ,
let mapleader=','

set encoding=utf-8
set fileencoding=utf-8
set textwidth=100
set signcolumn=yes
set relativenumber
set ruler
set number
set colorcolumn=100
set nowrap
set smartindent
set noshowmode " disable mode messages

" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"" Enable hidden buffers
set hidden

" Better display for messages
set cmdheight=1

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

"" Copy/Paste/Cut
set clipboard=unnamed

" color
set termguicolors
syntax on

set background=dark
colorscheme candid

"*****************************************************************************
"" Mappings
"*****************************************************************************

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

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

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

" Denite
nmap ; :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>f :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Nerdtree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :NERDTreeFind<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif


"*****************************************************************************
"" Plugins Setup
"*****************************************************************************"

" Lightline
let g:lightline = {
      \ 'colorscheme': 'candid',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" Wrap in try/catch to avoid errors on initial install before plugin is available
try
 " Denite setup "
 " Use ripgrep for searching current directory for files
 " By default, ripgrep will respect rules in .gitignore
 "   --files: Print each file that would be searched (but don't search)
 "   --glob:  Include or exclues files for searching that match the given glob
 "            (aka ignore .git files)
 "
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')
" Open file commands
call denite#custom#map('insert,normal', "<C-t>", '<denite:do_action:tabopen>')
call denite#custom#map('insert,normal', "<C-v>", '<denite:do_action:vsplit>')
call denite#custom#map('insert,normal', "<C-h>", '<denite:do_action:split>')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
  \ 'auto_resize': 1,
  \ 'prompt': '❯ ',
  \ 'direction': 'rightbelow',
  \ 'winminheight': '10',
  \ 'highlight_mode_insert': 'Visual',
  \ 'highlight_mode_normal': 'Visual',
  \ 'prompt_highlight': 'Function',
  \ 'highlight_matched_char': 'Function',
  \ 'highlight_matched_range': 'Normal'
  \ }}
" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

" Close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.jsx,*.js'
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Vue
let g:vue_disable_pre_processors=1

" go & vim-go
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

" Haskell prettier
let g:hindent_on_save = 1
let g:hindent_command = "brittany"

"*****************************************************************************
"" Functions
"*****************************************************************************
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

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

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\
endif


" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" javascript
let g:javascript_enable_domhtmlcss = 1
" typescript
"let g:typescript_indent_disable = 1
" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
