" ----------------------------------------
" Bindings
" ----------------------------------------

" Note: This line MUST come before any <leader> mappings
let g:mapleader=','
let g:maplocalleader = '-'

" Basics {{{

set pastetoggle=<F6>
map <F6> :set invpaste<CR>:set paste?<CR>

" Edit vimrc with ,vi
nmap <silent> <leader>vi :e ~/.vim/vimrc<CR>
nmap <silent> <leader>vb :e ~/.vimrc.local.before<CR>
nmap <silent> <leader>vl :e ~/.vimrc.local<CR>
nmap <silent> <leader>vp :e ~/.vimrc.local.plugins<CR>

nnoremap j gj
nnoremap k gk
" }}}

" Common typos {{{
command! W w
command! Q q
command! WQ wq
command! Wq wq
imap jk <Esc>
map <F1> <Esc>
imap <F1> <Esc>

nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" }}}

" Other {{{
vnoremap < <gv
vnoremap > >gv
" make Y consistent with C and D. See :help Y.
nnoremap Y y$
" Y in visual mode copies to system clipboard
vmap Y "+y
" }}}

" Open files in current directory {{{
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <leader>e :edit %%
nmap <leader>v :view %%

nnoremap <leader><leader> <c-^>
" }}}

" Switch between test and production code {{{
nnoremap <leader>. :A<cr>
" }}}

" ---------------
" Leader Commands
" ---------------

" {{{ File Jumping
"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>
" }}}

" Spelling {{{
" Toggle spelling mode with ,s
nmap <silent> <leader>ss :set spell!<CR>
nmap <silent> <leader>sf :QuickSpellingFix<CR>
" }}}

" Window {{{
" Window Movement
" Equal Size Windows
nmap <silent> <leader>w= :wincmd =<CR>
" Swap Windows
nmap <silent> <leader>wx :wincmd x<CR>

" Window Splitting
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>
nmap <silent> <leader>sc :close<CR>
" }}}

" Other {{{
map <leader>YY :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>YL :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

nnoremap <silent> <space> :noh<cr>
nnoremap <leader>=  gg=G``

nnoremap <unique> <expr> <CR> empty(&buftype) ? ':w<CR>' : '<CR>'

nnoremap <silent><leader><C-]> <C-w><C-]><C-w>T
" }}}

" Test runner {{{
" Run this file
map <leader>t :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>T :call RunNearestTest()<cr>
" }}}

map <leader><space> :Vipe <CR>
map <leader>p :VipePop <CR>
" ----------------------------------------
" Mappings
" ----------------------------------------

" ---------------
" Regular Mappings
" ---------------
" Yank entire buffer with gy
nnoremap  <silent> gy :0,$ y<cr>
" Select entire buffer
nnoremap  <silent> vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap  <silent> Y y$

" Just to beginning and end of lines easier.
noremap  <silent> H ^
noremap  <silent> L $

" Create newlines without entering insert mode
nnoremap  <silent> go o<Esc>k
nnoremap  <silent> gO O<Esc>j

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap  <silent> U <C-r>


" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" ---------------
" Window Movement
" ---------------
nnoremap <silent> gh :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> gj :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> gk :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> <M-k> :wincmd k<CR>
nnoremap <silent> gl :WriteBufferIfNecessary<CR>:wincmd l<CR>
nnoremap <silent> <M-l> :wincmd l<CR>

"   4 Window Splits
"
"   -----------------
"   g1 | g2 | g3 | g4
"   -----------------
nnoremap <silent> 1 <c-w>w
nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>:wincmd l<CR>
nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Scroll larger amounts with C-j / C-k
nnoremap <C-j> 15gjzz
nnoremap <C-k> 15gkzz
vnoremap <C-j> 15gjzz
vnoremap <C-k> 15gkzz
nnoremap 1 <c-w>w

" ---------------
" Insert Mode Mappings
" ---------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>

" ---------------
" Leader Mappings
" ---------------

nnoremap <silent> <leader><space>:noh<cr>:call clearmatches()<cr>
nnoremap <silent> <leader>N <esc>:sbprevious<CR>
nnoremap <silent> <leader>M <esc>:sbnext<CR>
nnoremap <silent> <leader>n <esc>:bprevious<CR>
nnoremap <silent> <leader>m <esc>:bnext<CR>
nnoremap <silent> <leader>d <esc>:bdelete<CR>
nnoremap <silent> <leader>b <esc>:ls<CR>
vnoremap <silent> <leader>s :sort<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>l :set list!<CR>
nnoremap <silent> <leader>e :Explore<CR>
nnoremap <silent> <leader>f :CtrlP<CR>

" Format a json file with Python's built in json.tool.
nnoremap <leader>fj :%!python -m json.tool<CR>

" Format a json file with Python's built in json.tool.
vnoremap <leader>fj :'<,'>!python -m json.tool<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" Toggle spelling mode with ,s
nnoremap <silent> <leader>s :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x


" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <m-w> :close<CR>

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

" Insert a console statements
iabbrev clg console.log
iabbrev cld console.debug
iabbrev clda console.debug(arguments
" Insert a jsdoc block
iabbrev jxx /** \r* \r* */

" copy current file name (relative/absolute) to system clipboard

if has("mac") || has("gui_macvim") || has("gui_mac")

  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>


vnoremap <silent> < <gv
vnoremap <silent> > >gv
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv

" search current file for visually selected  word
vnoremap // y/<C-R>"<CR>

