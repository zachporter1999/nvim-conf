""" Nvim Config

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        " --------------------------------
        "  Status Bar
        " --------------------------------
        "Plug 'nvim-lualine/lualine.nvim'
        "Plug 'kyazdani42/nvim-web-devicons'
        Plug 'nvim-tree/nvim-tree.lua'

        " --------------------------------
        "  Note Taking
        " --------------------------------
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-orgmode/orgmode'
        Plug 'dhruvasagar/vim-dotoo'
        Plug 'junegunn/goyo.vim'
        Plug 'sotte/presenting.vim'
        Plug 'blindFS/vim-taskwarrior'

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
let g:loaded_netrw=1
let g:loaded_netrwPlugin=1
let g:mapleader=';'

let s:theme = getenv("THEME")

if s:theme == v:null
        let s:theme = 'dark'
endif

let &background = s:theme
set noexpandtab
set number
set relativenumber
set nowrap
set laststatus=1
set showtabline=2
set mouse="" " default: nvi (normal, visual, insert)

colorscheme custom

" ========================================
" Dotoo
" ========================================
let g:dotoo_begin_src_languages=[
                        \ "c",
                        \ "rust",
                        \ "vim",
                        \ "bash",
                        \ "python"
                        \]

let g:dotoo#agenda#files=[
                        \ "~/dotoo/*.dotoo"
                        \]

let g:dotoo#parser#todo_keywords = [
                        \ 'TODO',
                        \ 'IN_PROG',
                        \ 'REVIEW',
                        \ 'WAITING',
                        \ 'EXTRA',
                        \ 'MEETING',
                        \ '|',
                        \ 'CANCELLED',
                        \ 'DONE'
                        \]

let g:dotoo_todo_keyword_faces = [
                        \ [ 'TODO',     [ ':foreground black', ':background red',     ':weight bold' ]],
                        \ ['IN_PROG',   [ ':foreground black', ':background yellow',  ':weight bold' ]],
                        \ ['REVIEW',    [ ':foreground black', ':background yellow',                 ]],
                        \ ['WAITING',   [ ':foreground black', ':background blue',    ':weight bold' ]],
                        \ ['EXTRA',     [ ':foreground black', ':background cyan',    ':weight bold' ]],
                        \ ['MEETING',   [ ':foreground black', ':background magenta', ':weight bold' ]],
                        \ ['CANCELLED', [ ':foreground black', ':background grey',    ':weight bold' ]],
                        \ ['DONE',      [ ':foreground black', ':background green',   ':weight bold' ]]
                        \]

execute 'nnoremap <leader>c :e '      . stdpath('config') . '/init.vim<cr>'
execute 'nnoremap <leader>s :source ' . stdpath('config') . '/init.vim<cr>'


command Tig term tig

au FileType dotoo let b:presenting_slide_separartor = '\v(^|\n)\*{1,}'

" ========================================
" Neovim Sprecific
" ========================================
if has('nvim')
lua << EOF
        -- -------------------------------
        -- Lua Line
        -- -------------------------------
        -- require('lualine').setup({
        --         options = {
        --                 component_separators = '',
        --                 section_separators = '',
        --                 theme = "16color",
        --         },
        --         tabline = {
        --                 lualine_a = {'buffers'},
        --                 lualine_b = {},
        --                 lualine_c = {},
        --                 lualine_x = {},
        --                 lualine_y = {},
        --                 lualine_z = {'tabs'}
        --         }
        -- })

        -- -------------------------------
        -- Which Key
        -- -------------------------------
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require('which-key').setup({
        -- your configuration comes here
        })

        require('nvim-tree').setup({
                sort_by = "case_sensitive",
                view = {
                        width = 30,
                },
                renderer = {
                        group_empty = true,
                },
                filters = {
                        dotfiles = true,
                },
        })
EOF
endif

