local status, floaterm = pcall(require, "toggleterm")
local Terminal = require("toggleterm.terminal").Terminal
local M = {}

if not status then
	vim.notify("Floaterm is not Found ...")
	return false
end

function _LazyGit()
	local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
	lazygit:toggle()
end

function _Node()
	local node = Terminal:new({ cmd = "node", hidden = true })
	node:toggle()
end

function _Python()
	local python = Terminal:new({ cmd = "python3", hidden = true })
	python:toggle()
end

function _Lua()
	local lua = Terminal:new({ cmd = "lua", hidden = true })
	lua:toggle()
end

function M.Config()
	floaterm.setup({
		open_mapping = [[<leader>t]],
		size = 20,
		hide_numbers = true,
		direction = "float",
		float_opts = {
			border = "rounded",
			winlend = 0,
		},
		autochdir = true,
		shell = "powershell",
		winbar = {
			enabled = false,
		},
	})
end

return M
