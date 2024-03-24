set relativenumber
set number
set linebreak

set mouse=a

map <space> <leader>

" Greatest Rebind of all time
imap <C-c> <Esc>

" Pane Navigation

nmap <C-h> <C-w>h 
nmap <C-j> <C-w>j 
nmap <C-k> <C-w>k 
nmap <C-l> <C-w>l 

" Window Managment
nmap <leader>sv :vsplit<CR>
nmap <leader>sh :split<CR>
nmap <leader>st :terminal<CR>

" Plugin Management

call plug#begin()

Plug 'sqls-server/sqls.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }


call plug#end()
