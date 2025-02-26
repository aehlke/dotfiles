
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot' "improved syntax highlighting for various languages
Plug 'kburdett/vim-nuuid'
call plug#end()

" dein Scripts-----------------------------
    "call dein#add('Shougo/neosnippet.vim')
    "call dein#add('Shougo/neosnippet-snippets')
    "call dein#add('qpkorr/vim-bufkill')
    "call dein#add('bkad/CamelCaseMotion')
    "call dein#add('ervandew/supertab')
    "call dein#add('python-mode/python-mode')
    "call dein#add('tweekmonster/django-plus.vim')
    "call dein#add('vim-scripts/nginx.vim')
    "call dein#add('powerman/vim-plugin-AnsiEsc')
    "call dein#add('ap/vim-css-color')
    "call dein#add('pangloss/vim-javascript')
    "call dein#add('scrooloose/nerdcommenter')
    "call dein#add('lepture/vim-jinja')
    "call dein#add('mattn/gist-vim', {'depends': 'mattn/webapi-vim'})
    "call dein#add('tpope/vim-surround')
    "call dein#add('tpope/vim-fugitive')
    "call dein#add('maralla/validator.vim')
    "call dein#add('pearofducks/ansible-vim')
    "call dein#add('fisadev/vim-isort')
    "call dein#add('editorconfig/editorconfig-vim')
    "call dein#add('michaeljsmith/vim-indent-object')
    "call dein#add('rizzatti/dash.vim')

    "call dein#end()
    "call dein#save_state()
"endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
" End dein Scripts-------------------------


"
" Useful references:
"
" python-mode keyboard shortcuts:
"   https://github.com/klen/python-mode#id18


"let canvas_dir = "/var/canvas/website"
"if isdirectory(canvas_dir)
"    exec "cd ".canvas_dir
"elseif isdirectory("~/workspace")
"    cd ~/workspace
"endif

"
" Basic/common settings
"
filetype plugin indent on
filetype detect

" Vim is better
set nocompatible
" Set the default file encoding to UTF-8:
set encoding=utf-8
" command line history
set history=2400

" Colorization/display

" Syntax highlighting!
syntax on
"if &term=="builtin_gui"
"endif
" Show ruler line at bottom of each buffer
set ruler
" Disable cursor blink
set gcr=a:blinkon0
" Show additional info in the command line (very last line on screen) where
" appropriate.
set showcmd
" Always display status lines/rulers
"set laststatus=2
" Always show the status line/ruler.
set laststatus=1
" display more information in the ruler
"set rulerformat=%40(%=%t%h%m%r%w%<\ (%n)\ %4.7l,%-7.(%c%V%)\ %P%)
set rulerformat=%30(%=%h%m%r%w%<\ %4.7l,%-7.(%c%V%)\ %P%)
" current mode in status line
set showmode
" don't redraw the screen during macros etc (NetHack's runmode:teleport)
set lazyredraw
" threshold for reporting number of lines changed
set report=0
" Make vim less whiny
" :bn with a change in the current buffer? no prob!
set hidden
" no bells whatsoever
set vb t_vb=
" send more data to the terminal in a way that makes the screen update faster
set ttyfast
" < and > will hit indentation levels instead of always -4/+4
set shiftround
" min window height
"set wmh=0


" highlight text over 79 cols (pep8 etc)
if has("cc")
    set cc=+1
endif
"augroup vimrc_autocmds
"    "au!
"    "highlight OverLength ctermbg=darkred ctermfg=white guibg=#111415
"    "autocmd BufRead * highlight OverLength ctermbg=darkred ctermfg=white guibg=#24000d
"    "3e2426
"    "autocmd BufRead * match OverLength /\%>80v.\+/
"augroup END

" a - terse messages (like [+] instead of [Modified]
" o - don't show both reading and writing messages if both occur at once
" t - truncate file names
" T - truncate messages rather than prompting to press enter
" W - don't show [w] when writing
" I - no intro message when starting vim fileless
set shortmess=aotTWI

" Highlight word under cursor
"highlight flicker gui=bold guifg=white
"au CursorMoved <buffer> exe 'match flicker /\V\<'.escape(expand('<cword>'), '/').'\>/'



" Navigation/search

" Show matching brackets/parentheses when navigating around
set showmatch
" Show matching parens in 2/10 of a second. No idea why I wanted this.
set matchtime=2
" Search incrementally instead of waiting for me to hit Enter
set incsearch
" Search case-insensitively
set ignorecase
" But be smart about it -- if I have any caps in my term, be case-sensitive.
set smartcase
" Don't highlight search terms by default.
"set nohls
set hlsearch
" don't move the cursor to the start of the line when changing buffers
set nostartofline
" enable mouse in all modes
set mouse=a




" Formatting

" Automatically indent based on current filetype
set autoindent
" Don't unindent when I press Enter on an indented line
set preserveindent
" 'smartindent', however, screws up Python -- so turn it off
set nosmartindent
" Make tabbing/deleting honor 'shiftwidth' as well as 'softtab' and 'tabstop'
set smarttab
" Use spaces for tabs
set expandtab
" When wrapping/formatting, break at 79 characters.
"set textwidth=76
" By default, all indent/tab stuff is 4 spaces, as God intended.
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Default autoformatting options:
" t: automatically hard-wrap based on textwidth
" c: do the same for comments, but autoinsert comment character too
" r: also autoinsert comment character when making new lines after existing
" comment lines
" o: ditto but for o/O in normal mode
" q: Allow 'gq' to autowrap/autoformat comments as well as normal text
" n: Recognize numbered lists when autoformatting (don't explicitly need this,
" was probably in a default setup somewhere.)
" 2: Use 2nd line of a paragraph for the overall indentation level when
" autoformatting. Good for e.g. bulleted lists or other formats where first
" line in a paragraph may have a different indent than the rest.
set formatoptions=tcroqn2
" Try to break on specific characters instead of the very last character that
" might otherwise fit. Don't remember exactly why this is here but I'm happy
" with how things wrap now...
set lbr
" < and > will hit indentation levels instead of always -4/+4
set shiftround




" Behavior

" <Leader> key
let mapleader = ","

" auto-reload vimrc on write
" autocmd! BufWritePost .vimrc source %

" Allow folding to play nice with Python and other well-indented code
set foldmethod=indent
" Don't close all folds by default when file opens
set nofoldenable
" "/bin/bash -l -c <command>" for :sh and :!
" (so it sources my .bashrc and so forth)
set shellcmdflag=-c
set shell=bash\ -l
" Honor Vim modelines at top/bottom of files
set modeline
" Look 5 lines in for modelines (default is sometimes just 1 or 2 which may not
" be enough for some files)
set modelines=5
" When splitting, put new windows to the right (vertical) or below (horizontal)
set splitright splitbelow
" Start scrolling up/down when cursor gets to 3 lines away from window edge
set scrolloff=2
" Don't use 'more' for shell output automatically.
set nomore
" Use bash-like tab completion in Vim command line
set wildmenu
set wildmode=list:longest
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
" Allow backspaces to eat indents, end-of-line/beginning-of-line characters
set backspace=indent,eol,start
" Let me open a shitton of tabs at once if I really want.
set tabpagemax=100
" Make :sb let me navigate between all windows and tabs
set switchbuf=usetab
" only show a menu for completion, never a preview window or things like that
set completeopt=longest,menuone
" remember lotsa fun stuff
set viminfo=!,'1000,f1,/1000,:1000,<1000,@1000,h,n~/.viminfo
" if you :q with changes it asks you if you want to continue or not
set confirm
" 50 milliseconds for escape timeout instead of 1000
set ttimeoutlen=100
" show commands as I type them
set sc
" ack > grep
set grepprg=ack
" fold only when I ask for it damnit!
set foldmethod=marker
" close a fold when I leave it
set foldclose=all


" No more middle-click paste
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>


" Jump to last known location in file
" (might be slow, so disabled for now.)
""if has("autocmd")
""  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
""    \| exe "normal g'\"" | endif
""endif



"
" Settings for specific versions of Vim
"

" MacVim
if has("gui_macvim")
    set t_Co=256
    "colorscheme wombat256
    colorscheme rdark_ae
    " Colorize for a dark background
    set background=dark
    "set guifont=Inconsolata:h14
    set guifont=Menlo\ Regular:h12
    set lines=999
    set formatoptions-=t
    set formatoptions-=c
    set guioptions-=L
    set guioptions-=R
    set guioptions-=T " Toolbars suck.
endif


"
" Settings for specific filetypes
"

" vimrc without dot
au BufNewFile,BufRead,BufWritePost vimrc set filetype=vim
" Markdown
autocmd FileType mkd setlocal ai comments=n:>
" No more need to drop modelines into common Apache files
" (both Debian and RedHat style Apache conf dirs)
autocmd BufRead /etc/apache2/*,/etc/httpd/* setlocal filetype=apache
" Hide stupid files
let g:explHideFiles='^\.,.*\.class$,.*\.swp$,.*\.pyc$,.*\.swo$,\.DS_Store$'

"
" Key mappings
"

" Up/down go visually instead of by physical lines (useful for long wraps)
" Interactive ones need to check whether we're in the autocomplete popup (which
" breaks if we remap to gk/gj)
"TODO see SO, theres a better way to do this IIRC
map <up> gk
" If running in native Vim
if (exists('plug'))
    inoremap <up> <C-R>=pumvisible() ? "\<lt>up>" : "\<lt>C-o>gk"<Enter>
endif
map <down> gj
" If running in native Vim
if (exists('plug'))
    inoremap <down> <C-R>=pumvisible() ? "\<lt>down>" : "\<lt>C-o>gj"<Enter>
endif

" For when you forget to sudo. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Go to specific tabs like you can in Chrome.
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 1gtgT

" Insert-mode remappings
" Hit <C-a> in insert mode after a bad paste (thanks absolon)
inoremap <silent> <C-a> <ESC>u:set paste<CR>.:set nopaste<CR>gi
"ignore indent mode for shift-backspace
inoremap <S-BS> <Esc>xa

" Abbreviations
iabbr `p import pdb; pdb.set_trace()
iabbr `l import logging; logger = logging.getLogger('gunicorn'); logger.info()

" ctrl-b is stupid.
cnoremap <c-a> <home>

" Normal-mode remappings
nore ; :
nore \ ;
nmap <C-N> :nohl<CR>
" window switching
nmap <C-Up> <C-w><C-k>
nmap <C-Down> <C-w><C-j>
nmap <C-Left> <C-w><C-h>
nmap <C-Right> <C-w><C-l>
" window rearrangement
nmap <S-C-Up> <C-w>K
nmap <S-C-Down> <C-w>J
nmap <S-C-Left> <C-w>H
nmap <S-C-Right> <C-w>L
" Map normal mode Enter to add a new line.
" Useful for adding spacing to a file while navigating.
nmap <Enter> o<Esc>
" have Y behave analogously to D rather than to dd
nmap Y y$
" now search commands will re-center the screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
"w (move forward by word) should have W as its opposite
"no it shouldn't that's a bad habit! nmap W b
" shift + right and left switch buffers
nmap <S-Right> :bn<CR>
nmap <S-Left> :bp<CR>

" visually select the last pasted or inserted text,
" using the last used visual mode.
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'


" Visual-mode remappings
" Select lines, not including the carriage return.
vnoremap <silent> al :<c-u>norm!0v$h<cr>
vnoremap <silent> il :<c-u>norm!^vg_<cr>
onoremap <silent> al :norm val<cr>
onoremap <silent> il :norm vil<cr>

" make help easier to navigate
autocmd FileType help nnoremap <buffer> <CR> <C-]>
autocmd FileType help nnoremap <buffer> <BS> <C-T>




"
" Plugins
"

syntax on
colorscheme onedark

" ansiesc.vim
if exists(":AnsiEsc")
    exec ":AnsiEsc"
endif

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1


" python-mode
let g:pymode_python = 'python3'
" Disable default pymode options (which adds things like "setlocal number")
let g:pymode_options = 0
let g:pymode_lint_write = 0
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_folding = 0
let pymode_rope_extended_complete = 0
let g:pymode_rope_autoimport_modules = ["os.*","django.*","lxml.*","shutil","datetime"]
"exec(":RopeGenerateAutoimportCache")
" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0
" Enable pymode indentation
let g:pymode_indent = 1

" vim-isort
nmap <leader>i :Isort<CR>


" gist-vim (https://github.com/mattn/gist-vim)
let g:gist_detect_filetype = 1

" auto-update ctags on save
" actually don't, it's slow.
"autocmd BufWritePost *.py :TlistUpdate
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Process_File_Always=1
let Tlist_Show_Menu=1
let Tlist_Enable_Fold_Column=0
let Tlist_Show_One_File=1

let g:gist_detect_filetype = 1

" SuperTab
" <C-x><C-n> local keyword completion
" <C-x><C-o> omnicompletion
"let g:SuperTabCrMapping = 0
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:SuperTabContextDefaultCompletionType = '<C-x><C-n>'

" Python syntax highlighting
let python_highlight_space_errors = 0
let python_highlight_indent_errors = 0
let python_highlight_all = 1
let python_slow_sync = 1


" Shell cmds
let ti_simulator_script = "/Users/jehlke/workspace/titanium/Manabi/simulator.sh"
if filereadable(ti_simulator_script)
    exec "nmap <leader>m :!".ti_simulator_script."<CR>"
endif


"
" netrw (builtin file-browser plugin) preferences
"

" Default to tree view
let g:netrw_liststyle = 3
" Hide common hidden files
let g:netrw_list_hide = '.*\.py[co]$,\.git$,\.swp$'
" Don't use frickin elinks, wtf
let g:netrw_http_cmd = "wget -q -O" " or 'curl -Ls -o'


"""""""""""""""""""old stuff

" Quick write session with F2
map <F2> :mksession! ~/.vim_session <cr>
" And load session with F3
" (Disabled because I was accidentally pressing this.)
"map <F3> :source ~/.vim_session <cr>

" stupid hack, so % kills .vimrc source highlighting for some reason.
set filetype=vim

" TODO: Next things to add
" - undodir ( https://www.reddit.com/r/vim/comments/55ky40/whats_one_thing_everyone_should_have_in_their/d8c9abp )
" https://github.com/maralla/validator.vim
" https://github.com/vim-ctrlspace/vim-ctrlspace
" https://github.com/gcmt/taboo.vim Customize the look of tabs.
" http://vi.stackexchange.com/questions/9880/retitling-tab-labels/9881#9881
