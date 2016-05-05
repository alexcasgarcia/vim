" Organization scheme comes from :options menu

" General Config {{{
    let mapleader = ","             " Change leader to comma because backslash is too far away
" Configure vim to know i have a black background
    set t_Co=256
    colorscheme badwolf
" }}}

" 1. Important {{{
" Allows using <F2> in insert mode to toggle the paste option
set pastetoggle=<F2>
" }}}

" 2. Moving Around, Searching and Patterns {{{
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
" }}}

" 4. Displaying Text {{{
set number
set relativenumber                      " Display line numbers on the left
" Set the command window height to 2 lines, to avoid many cases of having to
"  press <Enter> to continue"
set cmdheight=2
" }}}

" 5. Syntax, highlighting and spelling {{{
syntax on               " Turn on syntax highlighting
filetype plugin on
set background=dark
set cursorline          " Highlight current line
set hlsearch            " Highlight searches (use <C-L> to temporarily turn off highlighting; see the mapping of <C-L> below)
" }}}

" 6. Multiple Windows {{{
set hidden
" Always display the status line, even if only one window is displayed
set laststatus=2
" }}}

" 11. Messages and Info {{{
set showcmd      " Show partial commands in the last line of the screen
set showmode     " Enables displaying whether paste is turned on in insert mode
set visualbell   " Use visual bell instead of beeping when doing something wrong
set ruler        " Display the cursor position on last line of screen or in status line of a window
set confirm     " Instead of failing a command because of unsaved changes, raise a dialog asking if you wish to save changes
" }}}

" 12. Selecting Text {{{
" Enable use of the mouse for all modes, you can use the mouse to block
" highlight if you want
set mouse=a
" }}}

" 13. Editing Text {{{
set backspace=indent,eol,start  " Allow backspacing over autoindent, line breaks and start of insert action
" }}}

" 14. Tabs and Indenting {{{
set shiftwidth=4
set softtabstop=4
set expandtab
" }}}

" 17. Mapping {{{
set notimeout ttimeout ttimeoutlen=200 " Quickly time out on keycodes, but never time out on mappings
" Easier moving between splits
" Map <c-h> to moving to the right split
nnoremap <c-h> <c-w><c-h>
" Map <c-l> to moving to the left split
nnoremap <c-l> <c-w><c-l>
" Map <c-j> to moving to the bottom split
nnoremap <c-j> <c-w><c-j>
" Map <c-k> to moving to the top split
nnoremap <c-k> <c-w><c-k>
"map jk to <esc> to save left hand
inoremap jk <esc>
vnoremap jk <esc>

"unnmap <esc> to learn jk
inoremap <esc> <nop>
vnoremap <esc> <nop>

"map L to move to end of line
nnoremap L $

"map H to move to beginning of line
nnoremap H ^

"Make saveing and quitting quicker
nnoremap <leader>q :wq<Esc>

" <F2> in normal mode will invert the paste option and then show the value of that option
nnoremap <F2> :set invpaste paste?<CR>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-e> to execute the current file as a python script
nnoremap <silent> <F5> :!clear;python %<CR>

" Map <leader><space> to unhighlight terms found from a search
nnoremap <leader><space> :nohlsearch<CR>

"function to toggle between relative and absolute numbering
function! NumberToggle()
    if(&relativenumber == &number)
        set relativenumber!
    else
        set relativenumber
    endif
endfunc

" Call number toggle function with <leader>n
nnoremap <leader>n :call NumberToggle()<CR>

" Select word in visual mode with space
nnoremap <space> viw

" Map <leader>ev to open up vimrc in split-mode
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Map <leader>sv to source the vimrc file 
nnoremap <leader>sv :source $MYVIMRC<cr>

" }}}

" 18. Reading and Writing Files {{{
"Modelines are special comments somewhere in a file that can declare certain
"Vim settings to be used only for that file.
set modelines=1 "Make Vim only use these settings for this file
" }}}

" 20. Command Line Editing {{{
set wildmode=list:longest
set wildmenu                " Enable <c-n> and <c-p> to scrol through matches

" }}}


" vim:foldmethod=marker:foldlevel=0
