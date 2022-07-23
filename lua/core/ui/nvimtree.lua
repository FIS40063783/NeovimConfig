local M = {}

local nvim_tree = require("nvim-tree")

local tree_opts = {
	open_on_setup = true,
	auto_reload_on_write = true,
	hijack_directories = {
		enable = true,
		auto_open = true
	},
	sort_by = 'case_sensitive',
	diagnostics = {
		enable = true,
		icons = {
			warning = "",
			error = "",
			info = "",
			hint = ""
		},
		git = {
			enable = true,
			
		}
	}
}

function M.config()
	nvim_tree.setup(tree_opts)
end

return M
