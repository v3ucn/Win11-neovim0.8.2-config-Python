call plug#begin('C:\nvim-win64\nvim-win64\share\nvim\plugged')


Plug 'navarasu/onedark.nvim'

Plug 'pablopunk/native-sidebar.vim'

Plug 'ncm2/ncm2'

Plug 'roxma/nvim-yarp'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'


call plug#end()

let g:onedark_config = {
    \ 'style': 'warm',
\}
colorscheme onedark

autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect


let g:native_sidebar_shortcut = '<c-t>'

set clipboard^=unnamed,unnamedplus

syntax on                       "syntax highlighting, see :help syntax
filetype plugin indent on       "file type detection, see :help filetype
set number                      "display line number
set path+=**                    "improves searching, see :help path
set noswapfile                  "disable use of swap files
set wildmenu                    "completion menu
set backspace=indent,eol,start  "ensure proper backspace functionality
set undodir=~/.cache/nvim/undo  "undo ability will persist after exiting file
set undofile                    "see :help undodir and :help undofile
set incsearch                   "see results while search is being typed, see :help incsearch
set smartindent                 "auto indent on new lines, see :help smartindent
set ic                          "ignore case when searching

set expandtab                   "expanding tab to spaces
set tabstop=4                   "setting tab to 4 columns
set shiftwidth=4                "setting tab to 4 columns
set softtabstop=4               "setting tab to 4 columns
set showmatch                   "display matching bracket or parenthesis
set hlsearch incsearch          "highlight all pervious search pattern with incsearch

highlight ColorColumn ctermbg=9 "display ugly bright red bar at color column number

" Keybind Ctrl+l to clear search
nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>

" When python filetype is detected, F5 can be used to execute script 
" autocmd FileType python nnoremap <buffer> <c-b> :<cr>:exec '!python' shellescape(expand('%:p'), 1)<cr>

nnoremap <C-B> :sp <CR> :term python % <CR>
nnoremap <C-W> :bd!<CR>



