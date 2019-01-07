call plug#begin('~/.vim/plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-eunuch'

Plug 'scrooloose/nerdtree'

call plug#end()

let g:airline_theme='light'

map ; :Files<CR>

map ' :NERDTreeToggle<CR>:set nu rnu<CR>

set nu rnu
set noswapfile

let g:airline_powerline_fonts = 1
