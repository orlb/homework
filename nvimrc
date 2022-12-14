" TODO: separate vundle init into region or something
"
"   To use this rc: create a symbolic link to this file, 
"   or copy this file to ~/.config/nvim/, and rename it to init.vim
"
" Configs below Vundle init
"
"
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'sukima/xmledit'
Plugin 'artanikin/vim-synthwave84'
Plugin 'mhinz/vim-startify'
Plugin 'relastle/bluewery.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-sensible'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'ap/vim-css-color'
"Plugin 'wfxr/code-minimap'
"Plugin 'wfxr/minimap.vim'

"Plugin https://github.com/vim-airline/vim-airline "Satus bar
"Plugin https://github.com/vifm/vifm.vim.git "Vifm file manager
"Plug https://github.com/preservim/nerdtree "File manager
"Plug https://github.com/vim-python/python-syntax "Python syntax
"Plug https://github.com/tpope/vim-commentary "For commentg code (gcc & gc)
"Plug https://github.com/preservim/tagbar "Tagbar for code navigation
"Plug https://github.com/tc50cal/vim-terminal "Terminal
"Plug akinsho/toggleterm.nvim "Open multiple terminals
Plugin 'Yggdroot/indentLine' "Indent line indication
Plugin 'terryma/vim-multiple-cursors' "CTRL + N for multiple cursors
Plugin 'ryanoasis/vim-devicons' "Developer icons
Plugin 'jiangmiao/auto-pairs' "Automatic bracket pairs
"Plug https://github.com/neoclide/coc.nvim "Autocomplition
Plugin 'dracula/vim' "Dracula theme
Plugin 'utensils/colors.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required

" CTRL-SPACE TRIGGERS SEMANTIC COMPLETION FOR YCM
" set colorscheme default, but make background blue, looks goood
" need to add colorscheme folder to runtimepath (rtp)

"colorscheme default
"highlight Pmenu ctermbg=gray guibg=gray
"highlight Normal guibg=darkblue

" Disable line numbers. On open terminal, enter insert mode. Basically get rid
" of nvim terminal features


"au TermOpen * setlocal listchars= nonumber norelativenumber
"au TermOpen * startinsert
"au BufEnter,BufWinEnter,WinEnter term://* startinsert
au BufLeave term://* stopinsert

" it goes :tabnew, :term, :startinsert
" compile and run macros, different number for different environment

" omnifunc completion

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set filetype=html
autocmd FileType html set shiftwidth	=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set filetype=css
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set filetype=html
let g:user_emmet_install_global = 0
autocmd FileType php,html,css EmmetInstall
filetype plugin on

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              

let php_sql_query=1                                                                                        
let php_htmlInStrings=1

" Hope this helps!

let g:AutoPairs = {'(':')', '[':']', '{':'}'}

nnoremap @1 :tabnew<cr>:term make -C ./build/ && ./build/main && exit<cr>:IndentLinesDisable<cr>:startinsert<cr>
nnoremap @2 :let fi = expand('%:t')<cr>:tabnew<cr>:exe "term python " . fi<cr>:IndentLinesDisable<cr>:startinsert<cr>
nnoremap @3 :tabnew<cr>:term rm -R /srv/http/*; cp -R ~/Desktop/misc/iam/badges/docdir/* /srv/http/<cr>:IndentLinesDisable<cr>:startinsert<cr>


"git macros
nnoremap @a :tabnew<cr>:term git add % && exit<cr>:startinsert<cr>
nnoremap @A :tabnew<cr>:term git add . && exit<cr>:startinsert<cr>
nnoremap @c :tabnew<cr>:term git commit && exit<cr>:startinsert<cr>
nnoremap @p :tabnew<cr>:term git push && exit<cr>:startinsert<cr>
nnoremap @P :tabnew<cr>:term git add . && git commit && git push && exit<cr>:startinsert<cr>

inoremap <A-f> <C-x><C-o>
imap <A-l> <C-y>,
nnoremap <A-e> <cmd>NERDTree<cr>
nnoremap <C-a> ggVG"+y<C-o>
tnoremap <Esc> <C-\><C-n>
nnoremap B gE
nnoremap <A-t> <cmd>tabnew<cr>
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
vnoremap < <gv
vnoremap > >gv
noremap <A-J> 30j
noremap <A-j> 10j
noremap <A-K> 30k
noremap <A-k> 10k
nnoremap <A-v> <cmd>vsplit<cr><c-w>w
nnoremap <A-s> <cmd>split<cr><c-w>w
nnoremap <A-q> <C-w>q
nnoremap Q :bd<cr>
nnoremap <A-l> <C-w>w
nnoremap <A-h> <C-w>p
nnoremap <A--> <c-w>-
nnoremap <A-=> <c-w>+
nnoremap <A-,> <c-w>8<
nnoremap <A-.> <c-w>8>
nnoremap <C-l> :bn<cr>
nnoremap <C-h> :bp<cr>

"colo desert
"hi Pmenu ctermbg=red guibg=darkslateblue
"hi Normal guibg=NONE

let my_colors = ["bluewery", "darkblue", "default", "desert", "dracula", "evening", "gruvbox", "habamax", "koehler", "lunaperche", "slate", "synthwave84"]

:execute 'colo' my_colors[rand() % len(my_colors)]


hi MatchParen ctermbg=6 guibg=#7f7f8c guifg=#bdb76b

set swapfile

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//



set nocompatible              " be iMproved, required
filetype off                  " required


" Semantic comp triggers after typing any capital letter, or _
let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc': [ 're![A-Z]', '_' ],
  \ }

" To ignore plugin indent changes, instead use:
filetype plugin on
filetype plugin indent on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"   ###########################################################################   "

" Vim configuration file "

" enable mouse support "
set mouse=a

" enable syntax "
syntax on

" enable line numbers "
set number
set relativenumber

" highlight current line "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" enable highlight search pattern "
set hlsearch

" enable smartcase search sensitivity "
set smartcase

" Indentation using spaces "
" tabstop:	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop	=4
set softtabstop	=4
set shiftwidth	=4
set expandtab
set autoindent
set smartindent

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python and Fortran files "
autocmd BufEnter *.txt :set textwidth=50
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
	set t_Co=256
endif
" enable true colors support "
set termguicolors
" Vim colorscheme "
"colorscheme desert

"-------------------------------------------------------------"
"Bonus. " Find & Replace (if you use the ignorecase, smartcase these are mandatory) "
"            :%s/<find>/<replace>/g   "replace global (e.g. :%s/mass/grass/g)"
"            :%s/<find>/<replace>/gc  "replace global with confirmation"
"            :%s/<find>/<replace>/gi  "replace global case insensitive"
"            :%s/<find>/<replace>/gI  "replace global case sensitive"
"            :%s/<find>/<replace>/gIc "replace global case sensitive with confirmation"

"        " Vim (book)marks "
"            mn     "replace n with a word A-Z or number 0-9"
"            :'n     "go to mark n"
"            :`.     "go to the last change"
"            :marks  "show all declared marks"
"            :delm n "delete mark n"

"        " Delete range selection "
"            :<line_number>,<line_number>d "(e.g. :2,10d deletes lines 2-10)"

"        " LaTeX shortcuts "
"            nnoremap <F1> :! pdflatex %<CR><CR>
"            nnoremap <F2> :! bibtex $(echo % \| sed 's/.tex$//') & disown<CR><CR>
"            nnoremap <F3> :! evince $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
"            nnoremap <F4> :! rm *.log *.aux *.out *.blg & disown<CR><CR>
