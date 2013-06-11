call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on

colorscheme desert

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set nu
set noerrorbells
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set ruler                   " show the cursor position all the time
set cursorline              " have a line indicate the cursor location
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set shiftround              " rounds indent to a multiple of shiftwidth
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
set hlsearch                " Highlight searches by default.
set undodir^=~/.vim/undo    " bundle/sensible turns on undo, so this will keep things cleaner

" Split Window
"
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
imap <C-W> <C-O><C-W>

" Folding
"
set foldmethod=syntax
set foldnestmax=3
nnoremap <space> za
vnoremap <space> zf
highlight Folded guibg=black guifg=blue

" Java
"
set path=**
set foldmethod=syntax
"set foldenable
autocmd FileType java,yml,html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Python Mode Options
"
autocmd FileType python setlocal colorcolumn=80 expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'python', 'java'],
                           \ 'passive_filetypes': ['puppet'] }

" NERDTree
"
map <C-n> :NERDTreeToggle<CR>
" open nerdtree if no files specified on command-line
autocmd vimenter * if !argc() | NERDTree | endif
" close nerdtree automatically if NT is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Checkstyle
"
let Checkstyle_XML = '~/.vim/resources/checkstyle-5.6.jar'
let Checkstyle_Classpath = '~/.vim/resources/sun_checks.xml'
