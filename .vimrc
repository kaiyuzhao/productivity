set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Yggdroot/indentLine'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'sjl/badwolf'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'vinitkumar/vim-tomorrow-theme'
Plugin 'mrtazz/DoxygenToolkit.vim'
Plugin 'Ack.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'fatih/vim-go'
Plugin 'tomasr/molokai'
Plugin 'fmoralesc/molokayo'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Valloric/YouCompleteMe'

""""""""""""""""""""""""""""""
" vim-powerline symbols
let g:airline_theme             = 'badwolf'
let g:airline#extensions#syntastic#enabled = 1

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'


"tagbar related settings
set tags=./tags;,~/.vimtags
+" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" Disable the scrollbars
set guioptions-=r
set guioptions-=L



" General
set timeoutlen=1000 ttimeoutlen=0
set nu
set numberwidth=3
set mouse=a
syntax on
set autoread
filetype indent plugin on

set background=dark
colorscheme molokai
set guifont=Inconsolata\ for\ Powerline:h14
set antialias
" Whitespace

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=999               " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set splitbelow
set splitright
set visualbell


" }

" Formatting {

set autoindent " Copy indent from last line when starting new line.
set colorcolumn=80 " mark col 80
set cursorline " Highlight current line
set cursorcolumn " Highlight current column
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces
set foldcolumn=2 " Column to show folds
set foldlevel=2
set foldlevelstart=2 " Sets `foldlevel` when editing a new buffer
set foldmethod=indent " Markers are used to specify folds.
set foldnestmax=3 " Set max fold nesting level
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=100 " Increase history from 20 default to 1000
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
set nocompatible " Make vim more useful
set noerrorbells " Disable error bells.
set nostartofline
set noshowmode
set report=0 " Show all changes.
set ruler " Show the cursor position
set tabstop=2
set softtabstop=2 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.

set wrap
set textwidth=79
set formatoptions=qrn1

" Highlight cursor line and cursor column
hi CursorLine ctermbg=DarkGrey cterm=bold
hi CursorColumn ctermbg=DarkGrey cterm=bold

" We do utf-8
scriptencoding utf-8
set encoding=utf-8

" Tagbar related settings
nmap <F8> :TagbarToggle<CR>



" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/vimrc')
    source $VIRTUAL_ENV/vimrc
endif


" SimpleFold related settings # Maybe
nnoremap <space> za
vnoremap <space> zf
let g:indentobject_meaningful_indentation = ["markdown", "ocaml"]


if &term == 'xterm' || &term == 'screen'
	set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
endif

" CtrlP related settings
let g:ctrlp_working_path_mode = ''
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc,*.pyc,tags
set wildmenu


" Gist related settings

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1


" Configuration
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Vinit Kumar"


"Nerdtree
nmap <C-o> :NERDTreeToggle<CR>
nmap <C-n> :NERDTreeFocus<CR>
let NERDTreeIgnore = ['\.pyc$']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Spell check always on
"set spell spelllang=en_us
"highlight clear SpellBad
"highlight clear SpellLocal
"highlight clear SpellRare
"highlight SpellBad cterm=underline ctermfg=red


" JavaScript
autocmd FileType javascript setlocal sw=2
autocmd FileType javascript setlocal ts=2
autocmd FileType javascript setlocal sts=2


" html
autocmd FileType html setlocal sw=2
autocmd FileType html setlocal ts=2
autocmd FileType html setlocal sts=2

" golang
autocmd FileType go setlocal ts=2 sw=2

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" python
autocmd FileType python setlocal ts=4 sw=4 expandtab autoindent smartindent smarttab

" No backup
set nobackup
set noswapfile

" Paste large amount of text in vim
set pastetoggle=<F2>

" Save key stroke
nnoremap ; :

" Space the final frontier
let mapleader = "\<Space>"

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>


" cd to the directory containing the file in the buffer. Both the local
" and global flavors.
nmap <leader>cd :cd %:h<CR>
nmap <leader>lcd :lcd %:h<CR>

" Shortcut to edit the vimrc
nmap <silent> <leader>vimrc :e ~/.vimrc<CR>

" Shortcut to yanking to the system clipboard
map <leader>y "*y
map <leader>p "*p


" Command to write as root if we dont' have permission
cmap w!! %!sudo tee > /dev/null %

" AutoCMDs

" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e


" Vim-Go related Settings
let g:go_errcheck_bin="/Users/vinitkumar/go/bin/errcheck"
let g:go_golint_bin="/Users/vinitkumar/go/bin/golint"
let g:go_fmt_autosave = 1
let g:github_upstream_issues = 1
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
execute pathogen#infect()
call pathogen#helptags()
