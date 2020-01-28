"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************

"setup vim-plug {{{

" Note: install vim-plug if not present
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
" Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/limelight.vim'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" For async completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" For Denite features
Plug 'Shougo/denite.nvim'

" Color scheme
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flrnprz/plastic.vim', { 'as': 'plastic' }
Plug 'flrnprz/candid.vim', { 'as': 'candid' }
"Plug 'joshdick/onedark.vim'

" go
"" Go Lang Bundle
Plug 'fatih/vim-go'
Plug 'tweekmonster/hl-goimport.vim'
Plug 'buoto/gotests-vim'

"" HTML / CSS / XML Bundle
Plug 'tpope/vim-haml', {'for': ['haml', 'sass', 'scss']}
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'amadeus/vim-xml'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

" javascript
"" Javascript Bundle
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
"Plug 'posva/vim-vue', {'for': 'vue'}
Plug 'MaxMEllon/vim-jsx-pretty'

" styled-components
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }

" Ruby
Plug 'vim-ruby/vim-ruby'

"Python
Plug 'vim-python/python-syntax', {'for': 'python'}

" Elm
"Plug 'elmcast/elm-vim'

" GraphQL
Plug 'jparise/vim-graphql'

" typescript
"" Typescript support
"Plug 'leafgarland/typescript-vim'
"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'HerringtonDarkholme/yats.vim'

" Fish
Plug 'Stautob/vim-fish'

call plug#end()
"}}}
