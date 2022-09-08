call plug#begin()

"plugins""""""
Plug 'francoiscabrol/ranger.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'jmckiern/vim-shoot', {'do': '\"./install.py\" geckodriver'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'hrsh7th/vim-vsnip'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'andweeb/presence.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'pocco81/auto-save.nvim'

call plug#end()

"global sets""""""
syntax on

set cursorline
set signcolumn=yes
set hidden
set incsearch
set smarttab
set splitright
set scrolloff=8
set splitbelow
set smartcase
set updatetime=100
set ignorecase
set smartindent
set tabstop=4
set softtabstop=4
set nobackup
set nowritebackup
set autoread
set encoding=UTF-8
set shiftwidth=4
set colorcolumn=200
set nowrap
set completeopt=menuone,noselect

filetype on
filetype plugin on
filetype indent on

highlight link CompeDocumentation NormalFloat

"screenshot"""""
let g:shoot_save_path = "screenshots"

"file manager"""""
nmap <C-a> :NERDTreeToggle<CR>
nmap <C-s> :write <CR>

"ALE""""""
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {'*':['trim_whitespace'],'python': ['black']}
let g:ale_fix_on_save = 1

"resize shortcuts""""""
nnoremap <silent> <C-Left>  :vert res +3 <CR>
nnoremap <silent> <C-Right> :vert res -3 <CR>
nnoremap <silent> <C-Down>  :res -3      <CR>
nnoremap <silent> <C-Up>    :res +3      <CR>

"move line up down shortcut""""""
nnoremap <silent> <A-k> :m -2 <CR>
nnoremap <silent> <A-j> :m +1 <CR>

"toggle terminal""""""
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

"theme""""""
let g:tokyonight_style = "night"
let g:tokyonight_transparent = "true"
colorscheme tokyonight

"airline""""""
" Vim Script
let g:lightline = {'colorscheme': 'tokyonight'}

"let g:airline#extensions#tabline#enabled = 2
"let g:airline#extensions#tabline#formatter = "unique_tail_improved
"let g:airline_powerline_fonts = 5

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"rich presence""""""
" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "O tal do nvim"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_log_level		   = "debug"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}

" Rich Presence text options
let g:presence_editing_text        = "fazendo programa"
let g:presence_file_explorer_text  = "pesquisano programa"
let g:presence_git_commit_text     = "mudando o programa"
let g:presence_plugin_manager_text = "gerenciando os programa"
let g:presence_reading_text        = "olhando os programa"
let g:presence_workspace_text      = "trabalhando nos programa"
let g:presence_line_number_text    = "no programa %s"

"compe""""""
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true

