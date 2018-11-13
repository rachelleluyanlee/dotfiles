" ======================== "
"     GENERAL SETTINGS     "
" ======================== "
 
" Coffee
inoremap jk <Esc>

" Paste and keep available to further pasting
xnoremap p "_dP

" set mouse=a                             " Allow Mouse Selection
set number                              " Display line numbers
set relativenumber                      " Line numbers are listed relative to cursor 
set wrap                                " Wrap text visually
set linebreak                           " Only wrap at break character
set nolist                              " Don't make whitespace characters visible
set wrapmargin=1                        " Wrap when close to right border window
" set tw=80                               " Max text width
set softtabstop=4                       " Set tab width to 4
set shiftwidth=4                        " Set >> and << indenting to 4
set expandtab                           " Convert tabs to spaces
set autoindent
set clipboard=unnamed                   " Use system clipbaord
set splitbelow                          " Splits open downward
set splitright                          " Or open rightward
" set showtabline=0                       " Never display the tab bar
set shortmess+=A                        " Don't show "ATTENTION" messages
set completeopt=longest,menuone         " Select longest common text in Omnicompletion 
set backspace=indent,eol,start

" http://www.johnhawthorn.com/2012/09/vi-escape-delays/
set notimeout
set timeoutlen=10
set ttimeoutlen=0

" Searching
set ignorecase                          " Ignore case when searching
set smartcase                           " Unless there are capitals
set hlsearch                            " Highlight search matches
set incsearch                           " Searches as you type

" Disable auto-commenting when pressing Enter in a comment block
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Use tabs in Makefiles
autocmd FileType make setlocal noexpandtab

" Saves undoes for each file even if they are closed
set undofile
set undodir=~/.vim/undodir

" set backupdir=/tmp/
" set directory=/tmp/

" ======================== "
"       KEYBINDINGS
" ======================== "

" Allow for mistakes in save/quitting
map :W :w
map :Q :q

" Allow split navigation from insert mode
imap <C-w>h <Esc><C-w>h
imap <C-w>j <Esc><C-w>j
imap <C-w>k <Esc><C-w>k
imap <C-w>l <Esc><C-w>l

" Allow <C-j> and <C-k> to be used to navigate Omnicompletion
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : '<C-j>'
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : '<C-k>'

" Make Ctrl-t act as "Swap letters"
nnoremap <C-t> Xp

" When jump to next match also center screen
" Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
nnoremap <silent> n :norm! nzz<CR>
nnoremap <silent> N :norm! Nzz<CR>
vnoremap <silent> n :norm! nzz<CR>
vnoremap <silent> N :norm! Nzz<CR>

" This allows pasting over other text without overriting register
" Note: This breaks pasting from other registers
xnoremap p "_dP"

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Enable plugins
filetype plugin on

" List of Plugins
" NerdCommenter
" call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree'    " Project folder browser
" Plug 'scrooloose/syntastic' " Syntax checking
" Plug 'Raimondi/delimitMate'   " Automatic parenthesis 
" Plug 'pangloss/vim-javascript' " JavaScript syntax highlighting
" Plug 'sheerun/vim-polyglot'
" Plug 'valloric/youcompleteme'
" call plug#end()

syntax enable
if (has("termguicolors"))
    set termguicolors
endif

" NERDTree
" map <C-w>t :NERDTreeToggle<CR>
" imap <C-w>t <Esc>:NERDTreeToggle<CR>
" let NERDTreeShowHidden=1                " Show dotfiles
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" colorscheme
source ~/.colors.vim

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0 

" ======================== "
"          CURSOR          "
" ======================== "
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

