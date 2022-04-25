--[[
-- which-key.lua
-- by: Zach Porter
--]]

local wk = require("which-key")
wk.register({
	t = {
		name = "Terminal",
		f = {"Open Vifm"},
		s = {"Open in spit"},
		t = {"Open in new tab"},
		v = {"Open in vertical split"},
	},
	n = {
		name = "Open File",
		b = {"New Buffer (explore)"},
		B = {"New Buffer"},
		s = {"New Split (explore)"},
		S = {"New Split"},
		t = {"New Tab (explore)"},
		T = {"New Tab"},
		v = {"New Vsplit (explore)"},
		V = {"New Vsplit"},
	},
	r = {"Toggle Relative Line Numbers"},
}, { prefix = "<leader>"})
