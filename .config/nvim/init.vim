" Plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'jszakmeister/vim-togglecursor'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'bfredl/nvim-miniyank'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" General
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set fillchars+=vert:\
let mapleader=","
set number
set ignorecase
set noswapfile
set completeopt=longest,menuone

" Gruvbox
set background=dark
colorscheme gruvbox

" Airline
let g:airline_left_sep= '░'
let g:airline_right_sep= '░'

" NerdTree
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
map <LEADER>f :NERDTreeToggle<CR>
autocmd VimEnter * if (0 == argc()) | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0

" Elm
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" Markdown
autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']

" MiniYank
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
nmap <A-p> <Plug>(miniyank-cycle)

" Ctrlp {
let g:ctrlp_max_height = 25
let g:ctrlp_show_hidden = 1 " ensure ctrlp lists hidden files "

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" Source: https://github.com/thoughtbot/dotfiles/blob/master/vimrc
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
" }


" Leader Mappings
map <leader>qv :qall<CR>
map <leader>. :noh<CR>
map <leader>n :NERDTreeTabsToggle<CR>
map <leader>ff :NERDTreeFind<CR>
map <leader>na :!xdg-open . > /dev/null<CR><CR>
map <leader>s :set syntax=
" Copy fullpath to global clipboard
nmap <leader>fp :let @+ = expand("%:p")<CR>
map <leader>vi :tabe ~/.config/nvim/init.vim<CR>
map <leader>vs :source ~/.config/nvim/init.vim<CR>
map <leader>fj :%!python -m json.tool<CR>

" Alt Mappings
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
