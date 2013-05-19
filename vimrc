call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set nu
set noerrorbells
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set ruler                   " show the cursor position all the time
set cursorline              " have a line indicate the cursor location
set softtabstop=2           " <BS> over an autoindent deletes both spaces.
set shiftround              " rounds indent to a multiple of shiftwidth
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}

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
set foldenable
" Javadoc comments (/** and */ pairs) and code sections (marked by {} pairs)
" mark the start and end of folds.
" All other lines simply take the fold level that is going so far.
"function! MyFoldLevel( lineNumber )
"  let thisLine = getline( a:lineNumber )
"  " Don't create fold if entire Javadoc comment or {} pair is on one line.
"  if ( thisLine =~ '\%(\%(/\*\*\).*\%(\*/\)\)\|\%({.*}\)' )
"    return '='
"  elseif ( thisLine =~ '\%(^\s*/\*\*\s*$\)\|{' )
"    return "a1"
"  elseif ( thisLine =~ '\%(^\s*\*/\s*$\)\|}' )
"    return "s1"
"  endif
"  return '='
"endfunction
"setlocal foldexpr=MyFoldLevel(v:lnum)
"setlocal foldmethod=expr

" Python Mode Options
"
