set et
set tabstop=4      " Optional, if you want files with tabs to look the same too.
set shiftwidth=4
set softtabstop=-1 " Use value of shiftwidth
set smarttab       " Always use shiftwidth
set number
set foldmethod=indent
let g:vim_jsx_pretty_colorful_config = 1 " default 0

call plug#begin()
"Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'jcherven/jummidark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
"Plug 'APZelos/blamer.nvim'
Plug 'zivyangll/git-blame.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()
"colorscheme OceanicNext
set encoding=UTF-8
set guifont=Cousine\ Nerd\ Font,\ Regular
nmap <F6> :NERDTreeToggle<CR>
"map <C-Up> :m -2<CR>
"map <C-k> :m -2<CR>
"map <C-Down> :m +1<CR>
"map <C-j> :m +1<CR>
"nnoremap d "_d
"nnoremap c d
"nnoremap C D
"vnoremap c d
"nnoremap x "_x
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
" set relativenumber
set ignorecase
let g:blamer_enabled = 1
let g:blamer_delay = 500
runtime macros/matchit.vim
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"open terminal
autocmd VimEnter * nested :botright terminal
autocmd VimEnter * nested :resize 20
"switch back to last buffer
autocmd VimEnter * wincmd p

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Set the tree on the left
"let g:NERDTreeWinPos = "left"
"autocmd VimEnter * NERDTree

" Set the terminal at the bottom
"autocmd VimEnter * terminal ++curwin

" Open new files in a new tab
autocmd BufEnter * nested if winnr('$') == 1 && exists('b:NERDTree') | tabnew | ene | endif

