" Plugins
call plug#begin()
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
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
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css', 'scss'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'bfredl/nvim-miniyank'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim' " Basically Silver searcher
Plug 'elixir-editors/vim-elixir'
Plug 'sebdah/vim-delve'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

Plug 'Quramy/tsuquyomi'

call plug#end()

" General {
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set fillchars+=vert:\
let mapleader=","
set number
set relativenumber
set ignorecase
set nowrap
set noswapfile
set completeopt=longest,menuone
set colorcolumn=101 " show column length hint for long lines
set mouse=a
" }

" Prettier {
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 100

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'true'

" none|es5|all
let g:prettier#config#trailing_comma = 'es5'

let g:prettier#exec_cmd_path = "~/.nvm/versions/node/v8.9.10/bin/prettier"

" flow|babylon|typescript|postcss|json|graphql
let g:prettier#config#parser = 'flow'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier
" }

" Gruvbox {
set background=dark
colorscheme gruvbox
" }

" Airline {
let g:airline_left_sep= '░'
let g:airline_right_sep= '░'
" }

" NerdTree {
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
map <LEADER>f :NERDTreeToggle<CR>
autocmd VimEnter * if (0 == argc()) | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }

" Syntastic {
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0
" }

" Elm {
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1
" }

" Markdown {
autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']
let g:vim_markdown_folding_disabled=1
" }

" MiniYank {
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
nmap <A-p> <Plug>(miniyank-cycle)
" }

" Ctrlp {
let g:ctrlp_max_height = 25
let g:ctrlp_show_hidden = 1 " ensure ctrlp lists hidden files "
" }

" Ack.vim {
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" }

" Emmet {
let g:user_emmet_install_global = 0

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,scss,javascript.jsx EmmetInstall
" }

" SilverSearcher {
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" Source: https://github.com/thoughtbot/dotfiles/blob/master/vimrc
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
" }

" Git (fugitive) mappings {
 " git push
 nmap <leader>gp :exec ':Git push origin ' . fugitive#head()<CR>

 " git pull
 nmap <leader>gl :exec ':Git pull origin ' . fugitive#head()<CR>

  " git status
  map <silent> <leader>gs :Gstatus<CR>/not staged<CR>/modified<CR>

  " git commit -am "
  map <leader>gci :Git commit -am "
  map <leader>gaci :!git add --all . && git commit -m "

  " git checkout
  map <leader>gco :Git checkout

  " git diff
  map <leader>gd :Gdiff<CR>

  " git gui
  map <leader>ggui :!git cola > /dev/null 2>&1 &<CR><CR>
  map <leader>gw :!git add . && git commit -m "WIP"
" }


" Leader Mappings {
map <leader>qv :qall<CR>
map <leader>. :noh<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>ff :NERDTreeFind<CR>
map <leader>na :!xdg-open . > /dev/null<CR><CR>
map <leader>s :set syntax=
" Copy fullpath to global clipboard
nmap <leader>fp :let @+ = expand("%:p")<CR>
map <leader>vi :tabe ~/.config/nvim/init.vim<CR>
map <leader>vs :source ~/.config/nvim/init.vim<CR>
map <leader>fj :%!python -m json.tool<CR>
map <leader>ft :set ft=
vnoremap <leader>b64e y:let @"=system('base64 --wrap 0', @")<cr>gvP
vnoremap <leader>b64d y:let @"=system('base64 --decode', @")<cr>gvP
" }

" Alt Mappings {
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" }

" Makros {
" Ruby
let @d = 'Orequire "pry-byebug";binding.pry'
" }
