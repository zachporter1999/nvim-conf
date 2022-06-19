--[[
--
--]]

local wk = require("which-key")
wk.register({
	h = {
 	name = "Nvim Config",
		h = {"Startify"},
		c = {"Open init.lua"},
		r = {"Reload init.lua"},
	},
}, { prefix = "<leader>"})

vim.api.nvim_set_keymap( 'n', '<leader>hn', ':Startify<cr>',                        {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hr", ":luafile ~/.config/nvim/init.lua<cr>", {noremap = true} ) -- TODO revise reloading init

vim.api.nvim_set_keymap( 'n', "<leader>hk",     ":set nosplitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hj",     ":set   splitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hh",     ":set nosplitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hl",     ":set   splitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ht",     ":tabnew | Startify<cr>", {noremap = true} )

-- Start menu config
local bookmarks = {
	{
		h = "~",
	},
	{
		d = "~/Documents",
	},
    {
        c = vim.fn.stdpath('config')..'/init.lua',
    },
}

vim.g.startify_lists = {
	{
		type = 'files',
		header = {'MRU'},
	},
	{
		type = 'bookmarks',
		header = {'Bookmarks'},
	},
	{
		type = 'sessions',
		header = {"Sessions"},
	},
}

function combine_bookmark_lists(default_list, custom_list)
    if (custom_list) then
        for k,v in pairs(custom_list) do
            table.insert(default_list, v)
        end
    end
end

function bookmarks_load(bookmark_list)
    if (bookmark_list) then
        combine_bookmark_lists(bookmarks, bookmark_list)
    end
    vim.g.startify_bookmarks = bookmarks
end
