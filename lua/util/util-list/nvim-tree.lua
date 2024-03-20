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
					git = {
						unstaged = "󰜎",
						staged = "󰜘",
						unmerged = "",
						renamed = "󰴒",
						untracked = "",
						deleted = "󱂥",
						ignored = "◌",
					},
				},
			},
		},
	})
end

return M
