" --- Plugins
call plug#begin()

    " --- Color schemes
    Plug 'morhetz/gruvbox'

    " --- Auto completition
    Plug 'xavierd/clang_complete'

    " --- Layout
    Plug 'preservim/NERDTree'
    Plug 'vim-airline/vim-airline'

call plug#end()

"  --- Indentation settings
set tabstop=4
set shiftwidth=4
set expandtab

" --- Gruvbox
set termguicolors
set background=light
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_italic = '1'
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox

" --- Line highlight
set number
set cursorline
highlight CursorLine guibg=#fbf1c7

" --- Airline setup
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let airline#extensions#tabline#current_first = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" --- Remove some messages on the bottom bar
set noshowmode
set noshowcmd
set shortmess+=F

" --- Autocompletition
let g:clang_library_path='/usr/lib/llvm-10/lib/libclang.so'
set completeopt=menu

" --- NERDTree
let g:NERDTreeQuitOnOpen = '1'

" --- Shortcuts
map <C-\> :NERDTreeToggle<CR>
