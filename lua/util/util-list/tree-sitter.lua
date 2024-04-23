local M = {}
local status, ts = pcall(require, "nvim-treesitter.configs")

if not status then
	vim.notify("treesitter is not found ...")
	return false
end

function M.Config()
	require("nvim-treesitter.install").prefer_git = true
	ts.setup({
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<CR>",
				node_incremental = "<CR>",
				node_decremental = "<BS>",
				scope_incremental = "<TAB>",
			},
		},
		indent = {
			enable = true,
		},
		rainbow = {
			enable = true,
			extended_mode = true,
			colors = {
				"#ffc0b6",
				"#bcfdde",
				"#f6f5bd",
				"#c0fbfd",
				"#dae0ff",
				"#c5fff3",
			},
		},
		autotag = {
			enable = true,
			enable_rename = true,
			enable_close = true,
			enable_close_on_slash = true,
			filetype = {
				"html",
				"javascript",
				"typescript",
				"javascriptreact",
				"typescriptreact",
				"jsx",
				"tsx",
			},
		},
	})
end

return M
