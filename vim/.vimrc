set nocompatible
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'neoclide/coc.nvim', { 'branch': 'release' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

function! GetSyntaxID()
    return synID(line('.'), col('.'), 1)
endfunction

function! GetSyntaxParentID()
    return synIDtrans(GetSyntaxID())
endfunction

function! GetSyntax()
    echo synIDattr(GetSyntaxID(), 'name')
    exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfunction

filetype indent plugin on
 
syntax enable
 
set hidden

set wildmenu

set showcmd
set noshowmode


set hlsearch
set ignorecase
set smartcase

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
"set listchars=eol:¬
"set list

set autoindent

set nostartofline

set confirm

set mouse=a

set number
 
set notimeout ttimeout ttimeoutlen=200

nnoremap <C-L> :nohl<CR><C-L>
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set foldcolumn=1

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd filetype markdown setlocal nonumber
autocmd filetype markdown setlocal conceallevel=2
autocmd FileType markdown let b:coc_suggest_disable = 1

set nobackup
set nowb
set noswapfile

set si "Smart indent
set wrap "Wrap lines

set encoding=utf-8

set breakindent
set linebreak

set scrolloff=10
set display+=lastline

set background=dark
colorscheme fresh

hi EndOfBuffer ctermfg=0

"split windows
hi VertSplit ctermfg=0 ctermbg=0
set fillchars=vert:\│

" Formats the statusline
hi User2 ctermbg=0 ctermfg=7
hi User1 ctermbg=0 ctermfg=2
hi statusline ctermfg=0 ctermbg=2
hi statuslineNC ctermfg=0 ctermbg=0
set laststatus=2

set statusline+=%1*             " change colors
set statusline+=[%{GetMode()}]  " show mode
set statusline+=%2*             " change colors
set statusline+=\ %t%m          " file name & modified flag
set statusline+=%=              " split alignment to right from here
set statusline+=%l/%L           " line X of Y
set statusline+=\ %y

function! GetMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

autocmd filetype netrw setlocal statusline=%1*%=%l/%L

"file explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=20

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

highlight FoldColumn ctermbg=0

" Configuration for vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
