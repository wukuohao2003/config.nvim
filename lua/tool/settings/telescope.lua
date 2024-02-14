local status, telescope = pcall(require, "telescope")
local M = {}

if not status then
	vim.notify("telescope is not found ...")
	return false
end

function M.Config()
	telescope.setup({
		defaults = {
			history = false,
			path_display = {
				"tail",
			},
			file_ignore_patterns = {
				"node_modules",
				".git",
				".hg",
				".DS_Store",
				"__pycache__",
				"%.log",
			},
			layout_config = {
				width = 0.8,
				height = 0.8,
				prompt_position = "top",
				preview_width = 0.6,
			},
			extensions = {},
			sorting_strategy = "ascending",
		},
	})
end

return M
