set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'git://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'mbbill/undotree'
Plugin 'ervandew/supertab'
Plugin 'slim-template/vim-slim.git'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'xolox/vim-misc'
Plugin 'airblade/vim-gitgutter'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Valloric/YouCompleteMe'
Plugin 'garyburd/go-explorer'
Plugin 'mkarmona/materialbox'
Plugin 'Shougo/neosnippet-snippets'

call vundle#end()
filetype plugin indent on
syntax on
filetype on
filetype plugin indent on
let mapleader=","

set noswapfile
" Sets how many lines of history VIM has to remember
set history=50

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" enhanced command completion
set visualbell

if has('mouse')
  set mouse=a
endif

syntax enable
set guifont=PragmataPro:h15
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_visibility= "low"
let g:airline_theme='term'
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar


set encoding=utf-8
set fileencodings=utf-8,cp1251
set fileencoding=utf8
set termencoding=utf8
set fileformat=unix
set wildmenu
set wildmode=list:longest,full
" Ignore following files when completing file/directory names
" Version control
set wildignore+=.hg,.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set title
set showcmd
set hidden
set nofoldenable
set nowrap
set number
set hlsearch
set ignorecase
set smartcase

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent
" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
map <F3>       :emenu Encoding.<TAB>

" Меню для выбора типа файла (DOS, UNIX, Mac)
menu FileFormat.UNIX :e ++ff=unix
menu FileFormat.DOS :e ++ff=dos
menu FileFormat.Mac :e ++ff=mac
map <F4>        :emenu FileFormat.<TAB>

" Better Completion
set completeopt=menu,longest,preview

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

"Vertical split then hop to new buffer
noremap <leader>v :vsp<CR>
noremap <leader>h :split<CR>

" Cursor highlights ***********************************************************
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline nocursorcolumn

" Professor VIM says '87% of users prefer jj over esc', jj abrams strongly disagrees
imap jj <Esc>
imap uu _
imap hh =>
imap -- ->
imap aa @

" NERDTree ********************************************************************
nmap <silent> <unique> <leader>n :NERDTreeToggle<CR>
nmap <silent> <unique> <leader>/ :NERDTreeFind<CR>

" User instead of Netrw when doing an edit /foobar
let NERDTreeHijackNetrw=1

" Single click for everything
let NERDTreeMouseMode=1

" Ignoring java class files
let NERDTreeIgnore=['.class$', '\~$', '^cscope', 'tags', 'node_modules', '.tmp']

" Ctrl-P **********************************************************************
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_map = '<leader>f'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 20
let g:ctrlp_extensions = ['tag']

let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'ToggleFocus()':        ['<c-tab>'],
      \ }

let ctrlp_filter_greps = "".
      \ "egrep -iv '\\.(" .
      \ "swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po|class|jar|DS_Store" .
      \ ")$' | " .
      \ "egrep -v '^(\\./)?(" .
      \ "libs/|deploy/vendor/|.git/|.hg/|.svn/|tmp/|.tmp/|.idea/|node_modules/|.sass-cache/|bower_components/" .
      \ ")'"

let my_ctrlp_user_command = "" .
      \ "find %s '(' -type f -or -type l ')' -maxdepth 15 -not -path '*/\\.*/*' | " .
      \ ctrlp_filter_greps

let my_ctrlp_git_command = "" .
      \ "cd %s && git ls-files && git ls-files -o | " .
      \ ctrlp_filter_greps

let g:ctrlp_user_command = ['.git/', my_ctrlp_git_command, my_ctrlp_user_command]

nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

" Tagbar **********************************************************************
nmap <silent> <unique> <leader>c :TagbarToggle<CR>

" Git Gutter ******************************************************************
if has('autocmd')
  augroup gitgutter_cmds
    au!
    autocmd BufReadPost ?* GitGutterAll
    autocmd FocusLost ?* GitGutterAll
  augroup END
endif

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Fugitive
" ********************************************************************
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost *.fugitiveblame set bufhidden=delete
autocmd BufReadPost .git/* set bufhidden=delete
autocmd BufReadPost GoToFile set bufhidden=delete

nnoremap <silent> <leader>gd :Gdiff<cr>
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gw :Gwrite<cr>
nnoremap <silent> <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gci :Gcommit<cr>
nnoremap <silent> <leader>gm :Gmove<cr>
nnoremap <silent> <leader>gr :Gremove<cr>
nnoremap <silent> <leader>gl :Glog<cr>
"
augroup ft_fugitive
    au!
    au BufNewFile,BufRead .git/index setlocal nolist
augroup END

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
