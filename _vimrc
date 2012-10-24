"Navigation
imap jj <Esc>
nnoremap j gj
nnoremap k gk
nmap J 5j
nmap K 5k
nmap L 5l
nmap H 5h

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
