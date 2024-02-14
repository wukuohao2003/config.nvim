local status, ntree = pcall(require, "nvim-tree")
local M = {}

if not status then
	vim.notify("nvim-tree is not found ...")
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

function M.Config()
	ntree.setup({
		git = {
			enable = true,
		},
		filters = {
			custom = {
				".git",
				"node_modules",
			},
			exclude = {
				".gitignore",
			},
			dotfiles = true,
		},
		view = {
			mappings = {
				list = {
					{ key = "v", action = "vsplit" },
					{ key = "s", action = "split" },
				},
			},
			float = {
				enable = false,
				quit_on_focus_loss = true,
				open_win_config = {
					relative = "editor",
					border = "rounded",
					width = 120,
					height = 30,
					col = 30,
					row = 6,
				},
			},
		},
		renderer = {
			special_files = { "README.md", "Makefile" },
			icons = {
				glyphs = {
					default = "󱧶",
					symlink = "󰈝",
					bookmark = "󰩋",
					modified = "",
					folder = {
						arrow_closed = "",
						arrow_open = "",
						default = "󰚝",
						open = "󰝰",
						empty = "󱃫",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
				},
			},
		},
		ui = {
			confirm = {
				remove = true,
				trash = true,
			},
		},
		log = {
			enable = false,
			truncate = false,
			types = {
				all = false,
				config = false,
				copy_paste = false,
				dev = false,
				diagnostics = false,
				git = false,
				profile = false,
				watcher = false,
			},
		},
	})
end

return M
