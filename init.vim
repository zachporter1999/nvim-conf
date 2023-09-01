""" Nvim Config

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        " --------------------------------
        "  Appearance
        " --------------------------------
        Plug 'overcache/NeoSolarized'
        Plug 'nvim-treesitter/nvim-treesitter'

        " --------------------------------
        "  Note Taking
        " --------------------------------
        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vimwiki/vimwiki'

        " --------------------------------
        "  General Utils
        " --------------------------------
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'

        " --------------------------------
        "  Plantuml
        " --------------------------------
        Plug 'weirongxu/plantuml-previewer.vim'
        Plug 'aklt/plantuml-syntax'
        Plug 'tyru/open-browser.vim'

        " --------------------------------
        "  Which Key
        " --------------------------------
        Plug 'folke/which-key.nvim'

call plug#end()

" ========================================
" Treesitter
" ========================================
let g:my_treesitter_languages=[
                        \ 'markdown',
                        \ 'gitcommit',
                        \ 'gitignore',
                        \ 'git_rebase',
                        \ 'make',
                        \ 'dockerfile',
                        \ 'diff',
                        \ 'yaml',
                        \ 'latex',
                        \ 'ini',
                        \
                        \ 'vimdoc',
                        \ 'bash',
                        \ 'groovy',
                        \
                        \ 'c',
                        \ 'cpp',
                        \ 'rust',
                        \ 'python',
                        \ 'lua',
                        \ ]

" ========================================
" Appearance
" ========================================
let g:mapleader=';'

set expandtab
set number
set relativenumber
set nowrap
set laststatus=1
set mouse="" " default: nvi (normal, visual, insert)

" Needed for whichkey
set timeout
set timeoutlen=300

" ========================================
" NeoSolarized
" ========================================
let g:neosolarized_contrast="high"
let g:neosolarized_visibility="high"
let g:neosolarized_bold=1
let g:neosolarized_underline=1
let g:neosolarized_italic=1
let g:neosolarized_termBoldAsBright=1
colorscheme NeoSolarized

" ========================================
" Vimwiki
" ========================================
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" ========================================
" Config Editing and Sourcing
" ========================================
if has('nvim')
        execute 'nnoremap <leader>c :tabnew ' . stdpath('config') . '/init.vim<cr>'
        execute 'nnoremap <leader>s :source ' . stdpath('config') . '/init.vim<cr>'
else
        execute 'nnoremap <leader>c :tabnew  $HOME/.vimrc<cr>'
        execute 'nnoremap <leader>s :source  $HOME/.vimrc<cr>'
endif

" ========================================
" Custom Commands
" ========================================
command Tig term tig
nnoremap <leader>tv :vsplit <Bar> Tig<cr>i
nnoremap <leader>ts :split  <Bar> Tig<cr>i

" ========================================
" Neovim Sprecific
" ========================================
if has('nvim')
        " Better terminal navigation
        tnoremap <C-w> <C-\><C-n><C-w>

        lua << EOF
        local which_key      = require('which-key')
        local treesitter_cfg = require('nvim-treesitter.configs')
        local telescope      = require('telescope')

        -- -------------------------------
        -- Which Key
        -- -------------------------------
        which_key.setup({
                window = {
                        position = "top",
                        border = "double",
                        margin = { 20, 50, 20, 50 },
                        winblend = 100,
                },
        })

        which_key.register({
                c = "Edit Config",
                s = "Source Config",
        }, { prefix = "<leader>" })

        -- -------------------------------
        -- Treesitter configuration
        -- -------------------------------
        treesitter_cfg.setup {
                highlight = {
                        enable = true,
                        additional_vim_regex_highlighting = vim.g.my_treesitter_languages,
                },
                ensure_installed = vim.g.my_treesitter_languages,
        }

        telescope.setup {

        }

EOF
endif

