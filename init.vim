set title

set nowrap

" Indentacion de dos espacios
set tabstop=2 " 
set shiftwidth=2 " 
set softtabstop=2 " 
set shiftround
set expandtab

let mapleader = "."
nnoremap <space>t :tabnew<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>[ :NERDTree<CR>
nnoremap <leader>] :NERDTree<CR> :q<CR>

set nocompatible

set guifont=CascadiaCodePL:h16

call plug#begin('~/.config/nvim/plugged')

Plug 'luochen1990/rainbow'

Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'
" Aquí puedes agregar los plugins que deseas utilizar utilizando la siguiente sintaxis:
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'

Plug 'valloric/youcompleteme'

Plug 'joshdick/onedark.vim'

Plug 'w0rp/ale'

call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set rnu

"let g:onedark_termcolors = 256"
syntax on
colorscheme onedark

let s:white = { "gui": "#db51c9", "cterm": "163", "cterm16" : "7" }
let s:red = { "gui": "#E06C75", "cterm": "2", "cterm16": "7" }
let s:yellow = { "gui": "#E5C07B", "cterm": "4", "cterm16": "7" }


call onedark#extend_highlight("Function", {"gui": "bold"})
call onedark#extend_highlight("MatchParen", { "fg": s:white })
call onedark#extend_highlight("Identifier", { "fg": s:red })
call onedark#extend_highlight("Constant", {"fg": s:yellow})


let g:rainbow_active = 1
