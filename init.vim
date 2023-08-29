""" Nvim Config

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        " --------------------------------
        "  Note Taking
        " --------------------------------
        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vimwiki/vimwiki'

        " TODO Posibly for better syntax
        "Plug 'nvim-treesitter/nvim-treesitter'

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
" Appearance
" ========================================
let g:mapleader=';'

set background=dark
set expandtab
set number
set relativenumber
set nowrap
set nocursorline
set nocursorcolumn
set notermguicolors
set laststatus=1
set showtabline=1
set mouse="" " default: nvi (normal, visual, insert)

colorscheme default

if has('nvim')
        " Better terminal navigation
        tnoremap <C-w> <C-\><C-n><C-w>
        execute 'nnoremap <leader>c :e '      . stdpath('config') . '/init.vim<cr>'
        execute 'nnoremap <leader>s :source ' . stdpath('config') . '/init.vim<cr>'
else
        execute 'nnoremap <leader>c :e       $HOME/.vimrc<cr>'
        execute 'nnoremap <leader>s :source  $HOME/.vimrc<cr>'
endif

command Tig term tig

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" ========================================
" Neovim Sprecific
" ========================================
if has('nvim')
lua << EOF
        -- -------------------------------
        -- Which Key
        -- -------------------------------
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require('which-key').setup({
                -- your configuration comes here
        })

        -- -------------------------------
        -- Treesitter configuration
        -- -------------------------------
        -- require('nvim-treesitter.configs').setup {
        --         -- If TS highlights are not enabled at all, or disabled via `disable` prop,
        --         -- highlighting will fallback to default Vim syntax highlighting
        --         highlight = {
        --                 enable = true,
        --                 -- Required for spellcheck, some LaTex highlights and
        --                 -- code block highlights that do not have ts grammar
        --                 additional_vim_regex_highlighting = {'org', 'markdown'},
        --         },
        --         ensure_installed = {'org', 'markdown'}, -- Or run :TSUpdate org
        -- }

EOF
endif

