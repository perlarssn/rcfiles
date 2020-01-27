"Navigation
imap jj <Esc>


scriptencoding utf8
set encoding=utf8

nnoremap j gj
nnoremap k gk
nmap J 7j
nmap K 7k
nmap L 7l
nmap H 7h
nmap § <Esc>:w!<CR>

set ai
set number

filetype indent on
filetype plugin on

set backup 
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set textwidth=80

colorscheme murphy

"Split windows
nmap <silent> rr <Esc>:tabnew<CR>
nmap <silent> tt <Esc>:split<CR>
nmap <silent> TT <Esc>:vsplit<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set ignorecase
set smartcase 
"Highlight search results
set hlsearch
"Remove search highlight
nnoremap ,<Space> :noh<CR>

" Mac settings:
syntax on
set backspace=start,eol,indent

"Insert <Tab> or complete identifier if the cursor is after a keyword
"character.
function! MyTabOrComplete()
	let col = col('.')-1
	if !col || getline('.')[col-1] !~ '\k'
		return "\<tab>"
	else
		return "\<C-N>"
	endif
endfunction
inoremap <Tab> <C-R>=MyTabOrComplete()<CR>

"Pathogen plugin
execute pathogen#infect()

set listchars=trail:·,precedes:«,extends:»,tab:▸\b
set list

" enable lightline status bar
set laststatus=2

" au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>
