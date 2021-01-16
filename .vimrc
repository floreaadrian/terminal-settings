set number
set relativenumber
syntax on
set termguicolors

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Rails plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Git plugin
Plugin 'airblade/vim-gitgutter'

" Sniptets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" File structure
Plugin 'scrooloose/nerdtree'

" Comentary
Plugin 'tpope/vim-commentary'

" Theme
" Plugin 'morhetz/gruvbox'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'overcache/NeoSolarized'

" Code time
Plugin 'wakatime/vim-wakatime'

" Dart
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on
filetype on
filetype indent on

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType haml setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType dart setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2

" File structure settings
map — :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
" autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR>

" Searching
nnoremap <silent> <C-z> :FZF<CR>
set tags=./tags;

" Comments
noremap \ :Commentary<CR>
autocmd FileType ruby setlocal commentstring=#\ %s

" Theme
" autocmd vimenter * ++nested colorscheme NeoSolarized
