" Specify a directory for plugins
call plug#begin('~/.nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'edkolev/tmuxline.vim'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tomlion/vim-solidity'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'RRethy/nvim-base16'
Plug 'neovimhaskell/haskell-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'

call plug#end()

" Treesitter configuration
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    custom_captures = {
        ["keyword.operator"] = "Keyword",
        ["operator"] = "Keyword",
        ["include"] = "Keyword",
        ["repeat"] = "Keyword"
    }
  },
  indent = { enable = false },
}
EOF


let mapleader=","

let g:coc_global_extensions = []

" disable <> auto completion
autocmd FileType html let b:coc_pairs_disabled = ['<']

" Tab config
set expandtab
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set autoindent

" tab size for html
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2

" General config
set noerrorbells
set nu
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set hidden
set cmdheight=2
set shortmess+=c
set termguicolors

" Theme config
let g:dracula_italic = 0
colorscheme dracula

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" Run goimports along gofmt on each save
let g:go_fmt_command = "gofmt"
let g:rustfmt_autosave = 1

nnoremap gsv :so $MYVIMRC<CR>

"highlight clear LineNr
"highlight clear SignColumn
highlight LineNr guibg=NONE
highlight SignColumn guibg=NONE

"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>tr :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Cocvim configuration
set updatetime=300

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()


" GoTo code navigation.
nmap <leader>d <Plug>(coc-definition)
nmap <leader>t <Plug>(coc-type-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>r <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>e <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>w <Plug>(coc-diagnostic-next)
nnoremap <C-p> :GFiles<CR>

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
