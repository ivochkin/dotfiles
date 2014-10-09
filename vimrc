syntax enable
colorscheme dante
set undofile
set undodir=~/.vim/undo
set path+=~/src/
set tags=tags;/
set dir=~/.vim/swp
set number
set autoindent
set wrap
set ignorecase
set incsearch
set nocompatible
set hidden
set tabstop=2
set shiftwidth=2
set nolist
set showmatch
set smarttab
set expandtab
set smartcase
set sidescroll=7
set sidescrolloff=7
set history=50000
set showmode
set cindent
set nobackup
set linebreak
set foldenable
set showcmd
set ch=1
set mousehide
set novisualbell
set t_vb=
set wildmenu
set wcm=<Tab>
set mouse=a
set mousemodel=popup
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
set termencoding=utf8
set encoding=utf8
set ff=unix
set splitbelow
set splitright
set acd
set scrolljump=5
set scrolloff=5
set hlsearch
set laststatus=2
set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [File=%{&fileencoding}]\ [Enc=%{&encoding}]\ [Type=%Y]\ [%03.3b]\ [0x%02.2B]\ [%03.3c:%l:%L]\ [%o:%p%%]
highlight statusline guibg=white guifg=Blue

au WinEnter * let w:m2=matchadd('ErrorMsg', '[ \t\r]\+$', -1)
let w:m2=matchadd('ErrorMsg', '[ \t\r]\+$', -1)
au WinEnter * let w:m2=matchadd('ErrorMsg', '[\t\r]', -1)
let w:m2=matchadd('ErrorMsg', '[\r\t]', -1)

au BufNewFile,BufRead *.c++ set syntax=cpp
au BufNewFile,BufRead *.proto set syntax=proto
au BufNewFile,BufRead *.ebnf set syntax=ebnf
au BufNewFile,BufRead *.gprof set filetype=gprof
au BufNewFile,BufRead *.md set filetype=markdown

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>
" use ,gf to go to file in a vertical split
nnoremap <silent> ,gf :vertical botright wincmd f<CR>kkkkkk

" Navigation shotcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" vimdiff color scheme
if &diff
     highlight DiffChange cterm=none ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
     highlight DiffText cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
endif

let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_licenseTag = "@copyright Copyright (c) Stanislav Ivochkin"
let g:DoxygenToolkit_authorName = "Stanislav Ivochkin <isn@extrn.org>"
let g:DoxygenToolkit_versionString = "1"

let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0
let g:localvimrc_reverse = 1

let g:autofenc_ext_prog_args = "-i -L ru"

command Ctags :!pwd | xargs ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
ab tdr /// @todo Remove it. If you see this message in production code, please report it to the author.
ab tdi /// @todo Implement it.<CR>assert(false && "Not implemented");

execute pathogen#infect()
