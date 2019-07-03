" for pathogen plugin manager execute pathogen#infect()
let g:pathogen_disabled = []
call pathogen#infect()
filetype off 
syntax on
filetype plugin indent on

" fundamental options
set nocompatible "needed to run plugins?
set t_Co=256 " for color support in vim, not sure if needed with solarized
set hidden " allow changing buffers without saving

set number " show line numbers
set relativenumber "show relative line numbers. with both, keeps line # at 0
set mouse=a " allow mouse to be used
set noshowmode " don't show --INSERT-- 
set timeoutlen=1000 ttimeoutlen=0 " to make escaping insert mode faster.

set tabstop=4 " set number of spaces in tab
set shiftwidth=4 " set shift width
set softtabstop=4 " backspacing on a pseudotab will delete this
set expandtab " turn tabs into spaces
set laststatus=2 "keep the status line up even if only one window

set bg=dark "dark style
colo solarized " solarized color scheme

set backspace=indent,eol,start " backspace functionality
set cc=80 " show a vertical line at 80 characters.
set list " show hidden characters
set listchars=tab:>-" ,trail:_ "add tab as hidden char to show. Not sure if I want trailing spaces shown.
let mapleader=" " "set spacebar to the leader
set linebreak " wrap lines at new words
let $BASH_ENV = "~/.vim/vim_bash" " use bash commands in shell
let g:tex_flavor = "latex"
set tw=80 fo=cqt wm=0 " start a new line after 80 characters.
set visualbell " turn on visual bell so that set t_vb turns off flashing at
set t_vb= " this is supposed to be blank
"au BufWinEnter * set relativenumber " set relativenumber for all buffers

" make the status line for foreground winfow bright red. The ctermbg, ctermfg colors can be found by running ~/Documents/bash/test_colors.sh 
" highlight StatusLine cterm=NONE ctermbg=3 ctermfg=8 gui=underline guibg=#ffffff guifg=#d70000
highlight BufTabLineCurrent cterm=underline ctermbg=14 ctermfg=8 gui=underline guibg=#ffffff guifg=#d70000
" highlight BufTabLineHidden cterm=underline ctermbg=6 ctermfg=10 gui=underline guibg=#ffffff guifg=#d70000
highlight BufTabLineActive cterm=None ctermbg=10 ctermfg=8 gui=underline guibg=#ffffff guifg=#d70000
highlight CursorLineNr cterm=None ctermbg=12 ctermfg=8 gui=None guibg=#ffffff guifg=#d70000 
highlight StatusLineNC cterm=NONE ctermbg=12 ctermfg=8 gui=underline guibg=#ffffff guifg=#d70000
hi StatusLine cterm=NONE ctermbg=1 ctermfg=8 gui=NONE guibg=#ffffff guifg=#d70000
hi CursorLine cterm=None ctermbg=0 gui=None guibg=#ffffff guifg=#d70000
hi CursorColumn cterm=None ctermbg=0 gui=None guibg=#ffffff guifg=#d70000

"Autocmds:  
augroup Inserting
     autocmd!
    autocmd InsertEnter * highlight StatusLine cterm=NONE ctermbg=4 ctermfg=8 gui=underline gui=NONE guibg=#ffffff guifg=#d70000
   " Revert Color to default when leaving Insert Mode
    autocmd InsertLeave * highlight StatusLine cterm=NONE ctermbg=1 ctermfg=8 gui=underline gui=NONE guibg=#ffffff guifg=#d70000
     autocmd InsertLeave * write " might slow things down a bit
augroup END

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" for yank highlighted text
if !exists('##TextYankPost')
      map y <Plug>(highlightedyank)
endif

" REMAPPINGS

" make it easier to yank to system register
noremap K "*
" since s and s are redundant, map to start and end of line
noremap s ^
noremap S $
noremap gs g^ 
noremap gs g$
" may add these if they come up. but need to be careful about overwriting other
" commands
map gY yg$ " has to be recursive so that y calls highlight text
map gyy g^yg$
noremap gC cg$
noremap gcc g^cg$ " note this will make gc (currently mapped) go slower
noremap gD dg$
noremap gdd g^dg$

" switch colon and semicolon keys in normal mode
noremap ; :
noremap : ;

function! HLLine(blinktime)
    set invcursorline
    set invcursorcolumn
    redraw
    exec 'sleep ' . float2nr(a:blinktime*1000) . 'm'
    set invcursorline
    set nocursorcolumn
    redraw
endfunction

" close buffer while leaving split open
" cnoremap bs bp\|bd #
" old Y was a synonym for yy, this gives parallelism with C and D behavior
map Y y$

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv
" ctrl-S saves all and escapes
inoremap <C-S> <ESC>:wa<CR>
nnoremap <C-S> :wa<CR>
" next and previous buffer
nnoremap <C-K> :bn<CR>
nnoremap <C-J> :bp<CR>
nnoremap <C-P> :bd<CR>
nnoremap <C-Q> :bp\|bd #<CR>
nnoremap <C-N> :call HLLine(0.1)<CR>

" give basic keys some functionality in normal mode
nnoremap <CR> m'o<ESC>``
" backspace deletes (note: doesn't work perfectly at beginning of line)
nnoremap <BS> i<BS><ESC>l
nnoremap <TAB> i<TAB><ESC>l

" LEADER REMAPPINGS. 

" <Leader> enter adds new line above
noremap <LEADER><CR> m'O<ESC>''
" comment line
noremap <LEADER>c 0i#<ESC>
" make line blank
noremap <LEADER>d 0d$
" indent to parentheses above
noremap <LEADER>i k0yf(j^hv0pv0<ESC>:s/\%V./ /g<CR>:noh<CR>
" make an enumerate clause for latex
noremap <LEADER>le i\begin{enumerate}[label=(\alph*)]<ESC>o<ESC>I\item<ESC>o<ESC>I\end{enumerate}<ESC>kA 
" repeat last macro
noremap <LEADER>r @@
" make print statement for yanked variable at current line
noremap <LEADER>p oprint('<ESC>pa: ' + str(<ESC>pa))<ESC>
" uncomment line
noremap <LEADER>u :s/#/<ESC>:noh<CR>
" go to buffer 1-l0. hopefully won't have more than 10 open.
nmap <LEADER>1 <Plug>BufTabLine.Go(1)
nmap <LEADER>2 <Plug>BufTabLine.Go(2)
nmap <LEADER>3 <Plug>BufTabLine.Go(3)
nmap <LEADER>4 <Plug>BufTabLine.Go(4)
nmap <LEADER>5 <Plug>BufTabLine.Go(5)
nmap <LEADER>6 <Plug>BufTabLine.Go(6)
nmap <LEADER>7 <Plug>BufTabLine.Go(7)
nmap <LEADER>8 <Plug>BufTabLine.Go(8)
nmap <LEADER>9 <Plug>BufTabLine.Go(9)
nmap <LEADER>0 <Plug>BufTabLine.Go(10)
nmap <LEADER>- <Plug>BufTabLine.Go(11)
nmap <LEADER>+ <Plug>BufTabLine.Go(12)
" g remappings. For more code/python related stuff but not strict.
" open vimrc
noremap gb :e $MYVIMRC<CR>
" open/close tag bar
noremap <silent> gH :TagbarToggle<CR>
" move focus to tag bar
noremap <silent> gh :TagbarOpen fj<CR>:set relativenumber<CR>
" latex current file
autocmd FileType latex noremap gl :w<CR>:!latte %<CR>
" source vimrc
noremap gm :so $MYVIMRC<CR>
" on openmind, don't go to the most recent line upon opening file
au! redhat BufReadPost

" move cursor to tagbar. also makes sure relativenumber is on for it
" noremap <silent> gr :TagbarOpen fj<CR>:set relativenumber<CR>
"


" COMMANDS

" Remove a file. not recommended, should move to ~/trash/ using bash instead.
"command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '
"            \.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')
" Clear all previous mappings
command! Mapclearr :mapclear | mapclear <buffer> | mapclear!
            \| mapclear! <buffer>
" clear previous mappings, source vimrc
command! Vimrc :mapclear | mapclear <buffer> | mapclear! | mapclear! <buffer>
            \| so $MYVIMRC
command! DelTrailWhite :%s/\s\+$//e
" switch from 2 spaces to 4 and back
command! ToFourSpaces :set ts=2 sts=2 noet | retab! | set ts=4 sts=4 et
            \| retab
command! ToTwoSpaces :set ts=4 sts=4 noet | retab! | set ts=2 sts=2 et | retab
command! Remove :!mv % ~/trash/%


" PLUGINS

let g:tagbar_width=40 " tag bar width
let g:tagbar_zoomwidth=0 " tag bar width when zoomed via x
let g:tagbar_compact=1 "compactify the tag bar
let g:tagbar_indent=1
let g:tagbar_show_line_numbers=2
let g:netrw_liststyle = 4 " file navigator default view
let g:netrw_banner = 0 " don't show the header for file navigator
let g:netrw_winsize = 25 "file navigator width is 25% of page
let g:netrw_list_hide = '^\./$' " for hiding ./ I think
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide.=',' . ghregex
let g:netrw_hide = 1
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' " keep file-nav line numbers 
let g:buftabline_numbers=2
let g:buftabline_separators=1
let g:buftabline_plug_max = 13
let g:highlightedyank_highlight_duration = 50
let g:netrw_dirhistmax = 0 " don't save history in .netrwhist file
" colo delek " for high contrast color. Turn on bright profile as default in
" Terminal prefs

" help
" https://stackoverflow.com/questions/2483849/detect-if-a-key-is-bound-to-something-in-vim
" https://vim.fandom.com/wiki/Unused_keys
"
" If you need high contrast color scheme: 
" Go to Terminal preferences and make Bright the default. Open a new tab, and
" set colo Delek. Also increase the font size a bit.
