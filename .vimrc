" --- Plugins
call plug#begin()
    " --- Color schemes
    Plug 'morhetz/gruvbox'

    " --- Auto completition and format
    Plug 'ycm-core/YouCompleteMe'
    Plug 'l3nkz/ycmconf'

    " --- C++
    Plug 'rhysd/vim-clang-format'
    Plug 'octol/vim-cpp-enhanced-highlight'

    " --- Flutter & Dart
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " --- Utilities
    Plug 'tpope/vim-fugitive'
    Plug 'ctrlpvim/ctrlp.vim'

    " --- NERDTree
    Plug 'preservim/NERDTree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " --- Layout
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

"  --- Remove bell
set vb t_vb=

"  --- Indentation/Encoding settings
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab

" --- Gruvbox
set termguicolors
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'medium'
set background=dark
let g:gruvbox_italic = '1'
let g:gruvbox_invert_selection = '0'

try
    colorscheme gruvbox
endtry

" --- Sessions
set ssop-=options

" --- Line highlight
set number
set cursorline
set mouse=a
set signcolumn=number

" --- Airline/Tabline setup
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = '1'
let g:airline#extensions#branch#enabled= '1'
let g:airline#extensions#tabline#show_buffers = '0'
let g:airline#extensions#tabline#exclude_preview = '0'
let g:airline#extensions#tabline#show_close_button = '0'
let g:airline#extensions#tabline#show_splits = '1'
let g:airline#extensions#tabline#show_tabs = '1'
let g:airline#extensions#tabline#show_tab_nr = '0'
let g:airline#extensions#tabline#show_tab_type = '0'
let airline#extensions#tabline#current_first = '0'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''

" --- Remove some messages on the bottom bar
set noshowmode
set noshowcmd
set shortmess+=F

" --- Autocompletition/search/folding
set completeopt=menu
set incsearch
set foldmethod=indent
let g:ycm_confirm_extra_conf = '0'
let g:ycm_always_populate_location_list = 1

" --- NERDTree
let g:NERDTreeNaturalSort = '1'
let g:NERDTreeShowHidden = '1'
let g:NERDTreeMinimalUI = '1'
let g:NERDTreeQuitOnOpen = '0'
let g:NERDTreeCustomOpenArgs = {'file':{'reuse':'all','where':'t','keepopen':1},'dir':{}}

" --- NERDTree colors
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = '1'
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = '1'

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:WebDevIconsDefaultFolderSymbolColor = "83a598"

" --- Shortcuts
set timeoutlen=1000
set ttimeoutlen=100
map <silent> <C-B> :NERDTreeToggle<CR>
map <silent> <Leader>f :ClangFormat<CR>
map <silent> <Leader>n :lnext<CR>
map <silent> <Leader>N :lprevious<CR>
map <silent> <Leader>G :llast<CR>
