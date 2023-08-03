""" Nvim Config

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        " --------------------------------
        "  Note Taking
        " --------------------------------
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-orgmode/orgmode'
        " TODO Move to this maybe?
        " Plug 'nvim-neorg/neorg'
        Plug 'nvim-lua/plenary.nvim'

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

function SplitTerm()
        vsplit
        terminal
        set insertmode
endfunction
nnoremap <C-w>t :call SplitTerm()<cr>

function SVNDiff(JI)
        let l:diff_file=JI . ".diff"
        call system("svn diff > " . diff_file)
        execute "vs " . diff_file
endfunction

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

        --require('nvim-tree').setup({
        --        sort_by = "case_sensitive",
        --        view = {
        --                width = 30,
        --        },
        --        renderer = {
        --                group_empty = true,
        --        },
        --        filters = {
        --                dotfiles = true,
        --        },
        --})

        -- Load custom treesitter grammar for org filetype
        require('orgmode').setup_ts_grammar()

        -- Treesitter configuration
        require('nvim-treesitter.configs').setup {
                -- If TS highlights are not enabled at all, or disabled via `disable` prop,
                -- highlighting will fallback to default Vim syntax highlighting
                highlight = {
                        enable = true,
                        -- Required for spellcheck, some LaTex highlights and
                        -- code block highlights that do not have ts grammar
                        additional_vim_regex_highlighting = {'org'},
                },
                ensure_installed = {'org'}, -- Or run :TSUpdate org
        }

        require('orgmode').setup({
                org_agenda_files = {'~/org/*'},
                org_default_notes_file = '~/org/refile.org',
                org_todo_keywords = {
                        'TODO',
                        'INPROG',
                        '|',
                        'DONE',
                        'CLOSED',
                },
                org_todo_keyword_faces = {
                        TODO	= ':foreground red',
                        INPROG	= ':foreground yellow',
                        DONE	= ':foreground green',
                        CLOSED	= ':foreground grey',
                }
        })
        -- require('neorg').setup {
        --     load = {
        --         ["core.defaults"] = {}, -- Loads default behaviour
        --         ["core.concealer"] = {}, -- Adds pretty icons to your documents
        --         ["core.dirman"] = { -- Manages Neorg workspaces
        --             config = {
        --                 workspaces = {
        --                     notes = "~/notes",
        --                 },
        --             },
        --         },
        --     },
        -- }
EOF
endif

