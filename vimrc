" Vundle
" (See https://github.com/gmarik/vundle )
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"
" My bundles:
"

"Bundle 'L9'
"Bundle 'FuzzyFinder'
" L9 is a FuzzyFinder dependency.

Bundle 'michaeljsmith/vim-indent-object.git'
" Adds a text-object 'i' (so you can do e.g. vii to select indent level.)

"Bundle 'hallettj/jshint'
" See https://github.com/hallettj/jslint.vim for installation docs.

Bundle 'bufkill.vim'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'bkad/CamelCaseMotion.git'
Bundle 'ervandew/supertab'
Bundle 'gg/python.vim'
Bundle 'inkarkat/argtextobj.vim.git'
Bundle 'iynaix/django.vim'
Bundle 'kana/vim-textobj-django-template.git'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'kien/ctrlp.vim'
Bundle 'nginx.vim'
Bundle 'AnsiEsc.vim'
Bundle 'skammer/vim-css-color'
Bundle 'pangloss/vim-javascript'
Bundle 'python.vim--Vasiliev'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'
Bundle 'mitsuhiko/vim-jinja'
Bundle 'aehlke/vim-rename3'
"Bundle 'scrooloose/syntastic'
Bundle 'groenewege/vim-less'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'

Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'
Bundle 'zhaocai/unite-help'
" vimproc.vim is a unite.vim dependency.
" To build it, run: cd ~/.vim/bundle/vimproc.vim ; make -f make_mac.mak
" It's also faster to use a lua-enabled (if_lua) vim: brew install macvim --with-cscope --with-lua --override-system-vim --HEAD
" See http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
" and below for mappings.

Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
" Provides :Dash family of commands for Dash.app
" https://itunes.apple.com/us/app/dash-docs-snippets/id458034879?mt=12

Bundle 'indenthtml.vim'
" Possible alternative: 'https://github.com/djcp/my_vim/blob/master/indent/html.vim'

"
" Run :BundleInstall to install the above bundles,
"  or :BundleInstall! to update existing bundles.
"
""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Useful references:
"
" python-mode keyboard shortcuts:
"   https://github.com/klen/python-mode#id18


let canvas_dir = "/var/canvas/website"
if isdirectory(canvas_dir)
    exec "cd ".canvas_dir
elseif isdirectory("~/workspace")
    cd ~/workspace
endif

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
set history=400
 
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
inoremap <up> <C-R>=pumvisible() ? "\<lt>up>" : "\<lt>C-o>gk"<Enter>
map <down> gj
inoremap <down> <C-R>=pumvisible() ? "\<lt>down>" : "\<lt>C-o>gj"<Enter>
 
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

" Plugin mappings
map <leader>l :TlistOpen<CR>
":TlistToggle<CR>
" FuzzyFinder
"map <leader>t :FuzzyFinderTextMate<CR>
nmap <leader>F :FufFile<CR>
nmap <leader>t :FufCoverageFile<CR>
nmap <leader>f :FufFileWithCurrentBufferDir<CR>
nmap <leader>d :FufDir<CR>
nmap <leader>u :FufBuffer<CR>
let g:fuf_dir_exclude = '\v(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_exclude = '\v\~$|\.(bak|sw[mnop])$|^(\/\/|\\\\|\/mnt\/|\/media\/)'
" Ignore the dojango directory since it's huge and spammy
let g:fuf_file_exclude = '\v\~$|dojango|\.(o|exe|dll|bak|sw[mnop]|zip|pyc|DS_Store|tar\.gz)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

" ansiesc.vim
if exists(":AnsiEsc")
    exec ":AnsiEsc"
endif

" taglist.vim
if filereadable('/usr/local/bin/ctags')
    let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
elseif filereadable('/opt/local/bin/ctags')
    let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
endif

" unite.vim
" Borrowed from https://github.com/bling/dotvim/blob/master/vimrc
nmap <space> [unite]
nnoremap [unite] <nop>
nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed -resume file_rec/async:! buffer file_mru bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files -resume file_rec/async:!<cr><c-u>
nnoremap <silent> [unite]F :<C-u>Unite -toggle -auto-resize -auto-preview -buffer-name=files -resume file_rec/async:!<cr><c-u>
nnoremap <silent> [unite]r :<C-u>Unite -toggle -auto-resize -buffer-name=recent -resume file_mru<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]j :<C-u>Unite -auto-resize -buffer-name=junk junkfile junkfile/new<cr>
let g:unite_data_directory = '~/.vim/.cache/unite'
let g:unite_enable_start_insert = 1
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files = 5000
let g:unite_prompt = '» '
" Faster update time after keypresses
let g:unite_update_time = 200
if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
    let g:unite_source_grep_recursive_opt=''
elseif executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-heading --no-color -a -C4'
    let g:unite_source_grep_recursive_opt=''
endif
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')
function! s:unite_settings()
    nmap <buffer> Q <plug>(unite_exit)
    nmap <buffer> <esc> <plug>(unite_exit)
    imap <buffer> <esc> <plug>(unite_exit)
    inoremap <silent><buffer><expr> <C-j> unite#do_action('split')
    nnoremap <silent><buffer><expr> <C-j> unite#do_action('split')
    inoremap <silent><buffer><expr> <C-k> unite#do_action('vsplit')
    nnoremap <silent><buffer><expr> <C-k> unite#do_action('vsplit')
endfunction
autocmd FileType unite call s:unite_settings()
call unite#custom#source('buffer,file,file_rec/async,file_rec,file_mru,file,grep',
    \ 'ignore_pattern', join([
    \ 'canvas/analytics/', 'canvas/chrome/', 'canvas/chrome_internal/', 
    \ 'canvas/deploy/', 'canvas/common/', 'canvas/shell/', 'canvas/scripts/',
    \ 'canvas/requirements/', 'canvas/common/', 'canvas/shell/', 'canvas/scripts/',
    \ 'canvas/website/static/css/', 'canvas/website/run/', 'CACHE/',
    \ 'canvas/website/caja/', 'canvas/website/load_tests/', 'canvas/website/static/bookmarklet/',
    \ 'canvas/website/static/lib/', 'canvas/website/run/email/', 'canvas/website/debug_toolbar/',
    \ 'canvas/website/static/img/', 'canvas/website/static/font/', 'canvas/website/static/admin/',
    \ 'canvas/website/compressor/', 'canvas/website/run/sent_mail.log/', 'migrations/',
    \ '\.sass-cache', '\.ropeproject', '\.ec2/',
    \ '\.pyc$', '\.png$', '\.jpg$', '\.gif$', '\.zip$', '\.gz$', '\.rdb$', '\.crx$', '\.jpeg$',
    \ '\.DS_Store$', '\.gitignore$', '\.pdf$', '\.db$', '\.pid$', '\.ico$',
    \ '\.nodeids$', '\.sv.$', '\.gitmodules$',
    \ ], '\|'))

" python-mode
" Disable default pymode options (which adds things like "setlocal number")
let g:pymode_options = 0
let g:pymode_lint_write = 0
let g:pymode_lint = 0
let g:pymode_rope = 1
let g:pymode_folding = 0
let pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os.*","django.*","lxml.*","shutil","datetime"]
exec(":RopeGenerateAutoimportCache")
" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0
" Enable pymode indentation
let g:pymode_indent = 1



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

