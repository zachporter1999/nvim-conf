""" Nvim Config

" ========================================
" Plugins
" ========================================
let g:my_plugin_list=[
                        \ 'overcache/NeoSolarized',
                        \ 'nvim-treesitter/nvim-treesitter',
                        \
                        \ 'vim-pandoc/vim-pandoc',
                        \ 'vimwiki/vimwiki',
                        \
                        \ 'nvim-lua/plenary.nvim',
                        \ 'nvim-telescope/telescope.nvim',
                        \
                        \ 'weirongxu/plantuml-previewer.vim',
                        \ 'aklt/plantuml-syntax',
                        \ 'tyru/open-browser.vim',
                        \
                        \ 'folke/which-key.nvim',
                        \]
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

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        for plugin in g:my_plugin_list
                Plug plugin
        endfor
call plug#end()

