local M = {}

local nvim_tree = require("nvim-tree")

local tree_opts = {
	open_on_setup = true,
	auto_reload_on_write = true,
	hijack_directories = {
		enable = true,
		auto_open = true
	},
	
}

function M.config()
	nvim_tree.setup(tree_opts)
end

return M
