let SessionLoad = 1
if &cp | set nocp | endif
nnoremap 	 >>
let s:cpo_save=&cpo
set cpo&vim
nnoremap <silent> <NL> :execute v:count1 . "bp"
nnoremap <silent>  :execute v:count1 . "bn"
nnoremap <silent>  :call append(line("."),   repeat([""], v:count1))
nnoremap  :call HLLine(0.1)
nnoremap  :bp|bd #
nnoremap  :w
nmap  # mzSF#D kPjsy0kPS
nmap  = <Plug>BufTabLine.Go(12)
nmap  - <Plug>BufTabLine.Go(11)
nmap  0 <Plug>BufTabLine.Go(10)
nmap  9 <Plug>BufTabLine.Go(9)
nmap  8 <Plug>BufTabLine.Go(8)
nmap  7 <Plug>BufTabLine.Go(7)
nmap  6 <Plug>BufTabLine.Go(6)
nmap  5 <Plug>BufTabLine.Go(5)
nmap  4 <Plug>BufTabLine.Go(4)
nmap  3 <Plug>BufTabLine.Go(3)
nmap  2 <Plug>BufTabLine.Go(2)
nmap  1 <Plug>BufTabLine.Go(1)
noremap  u :s/#/:noh
noremap  tw :set tw=0
noremap  v :bp:bp|bd #
noremap  t :wa:bp|bd #
noremap  do :windo diffoff
noremap  df :windo diffthis
noremap  s o:sav! ~/.vim/.recovered:vsw:bn
noremap  r @@
noremap  p oprint('pa: {}'.format(pa))
noremap  le o\begin{enumerate}[label=(\alph*)]oI\itemoI\end{enumerate}kA 
noremap  i k0yf(j^hv0pv0:s/\%V./ /g:noh
noremap <silent>  h :set hlsearch!
nmap  e [[w*
noremap  dd 0d$
noremap  ds "_dd
map  c gcc
nnoremap  bf ciwFalse
nnoremap  bt ciwTrue
nnoremap <silent>   :call append(line(".")-1, repeat([""], v:count1))
noremap : ;
noremap ; :
vnoremap < <gv
vnoremap > >gv
noremap K "*
xmap S <Plug>VSurround
nnoremap S $
snoremap S $
onoremap S $
map Y y$
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
noremap gm :so $MYVIMRC
noremap <silent> gh :TagbarOpen fj:set relativenumber
noremap <silent> gH :TagbarToggle
noremap gb :e $MYVIMRC
noremap gs g$
noremap s ^
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map y <Plug>(highlightedyank)
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
onoremap <Plug>(highlightedyank) y
xnoremap <silent> <Plug>(highlightedyank) :call highlightedyank#obsolete#highlightedyank#yank('x')
nnoremap <silent> <Plug>(highlightedyank) :call highlightedyank#obsolete#highlightedyank#yank('n')
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
noremap <silent> <Plug>BufTabLine.Go(-1) :exe 'b'.get(buftabline#user_buffers(),-1,'')
noremap <silent> <Plug>BufTabLine.Go(13) :exe 'b'.get(buftabline#user_buffers(),12,'')
noremap <silent> <Plug>BufTabLine.Go(12) :exe 'b'.get(buftabline#user_buffers(),11,'')
noremap <silent> <Plug>BufTabLine.Go(11) :exe 'b'.get(buftabline#user_buffers(),10,'')
noremap <silent> <Plug>BufTabLine.Go(10) :exe 'b'.get(buftabline#user_buffers(),9,'')
noremap <silent> <Plug>BufTabLine.Go(9) :exe 'b'.get(buftabline#user_buffers(),8,'')
noremap <silent> <Plug>BufTabLine.Go(8) :exe 'b'.get(buftabline#user_buffers(),7,'')
noremap <silent> <Plug>BufTabLine.Go(7) :exe 'b'.get(buftabline#user_buffers(),6,'')
noremap <silent> <Plug>BufTabLine.Go(6) :exe 'b'.get(buftabline#user_buffers(),5,'')
noremap <silent> <Plug>BufTabLine.Go(5) :exe 'b'.get(buftabline#user_buffers(),4,'')
noremap <silent> <Plug>BufTabLine.Go(4) :exe 'b'.get(buftabline#user_buffers(),3,'')
noremap <silent> <Plug>BufTabLine.Go(3) :exe 'b'.get(buftabline#user_buffers(),2,'')
noremap <silent> <Plug>BufTabLine.Go(2) :exe 'b'.get(buftabline#user_buffers(),1,'')
noremap <silent> <Plug>BufTabLine.Go(1) :exe 'b'.get(buftabline#user_buffers(),0,'')
nnoremap <BS> <<
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'),'\').'\>':set hls:let @"=expand('<cword>')
inoremap  A) 
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap  :w
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set expandtab
set fileencodings=ucs-bom,utf-8,latin1
set formatoptions=cqt
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set hidden
set hlsearch
set laststatus=2
set listchars=tab:>-
set mouse=a
set ruler
set runtimepath=~/.vim,~/.vim/bundle/commentary,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/tagbar,~/.vim/bundle/vim-buftabline,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-flake8,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-highlightedyank,~/.vim/bundle/vim-surround,~/.vim/bundle/vimtex,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,~/.vim/after
set shiftwidth=4
set noshowmode
set showtabline=2
set softtabstop=4
set tabline=%!buftabline#render()
set tabstop=4
set textwidth=80
set timeoutlen=3000
set ttimeoutlen=0
set visualbell
set wildignore=*.pyc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /rdma/vast-rdma/vast/cbmm/salford/neurosymbolic-modules/ec
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +407 dreamcoder/domains/logo/main.py
badd +1 bin/logo.py
badd +14 dreamcoder/domains/list/main.py
badd +1332 dreamcoder/recognition.py
badd +1 bin/list.py
badd +204 dreamcoder/dreamcoder.py
badd +1 dreamcoder/domains/arc/arcPrimitives.py
badd +70 bin/arc.py
badd +16 dreamcoder/domains/logo/logoPrimitives.py
badd +81 dreamcoder/domains/tower/towerPrimitives.py
badd +83 dreamcoder/domains/text/textPrimitives.py
badd +394 dreamcoder/domains/text/makeTextTasks.py
badd +0 bin/arc2.py
argglobal
silent! argdel *
argadd dreamcoder/domains/logo/main.py
edit bin/arc2.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 134 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 40 + 87) / 175)
argglobal
let s:cpo_save=&cpo
set cpo&vim
noremap <buffer> <F7> :call flake8#Flake8()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cqt
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 35 - ((6 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
wincmd w
argglobal
enew
file __Tagbar__.1
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tagbar'
setlocal filetype=tagbar
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cqt
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#StatusLineNC#[Order]\ arc2.py
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tagbar'
setlocal syntax=tagbar
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
exe 'vert 1resize ' . ((&columns * 134 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 40 + 87) / 175)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
