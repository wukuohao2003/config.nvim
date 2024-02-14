local status, notify = pcall(require, "noice")
local M = {}

if not status then
	vim.notify("notify is not found")
	return
end

function M.Config()
	require("notify").setup({
		background_colour = "#000000",
	})

	notify.setup({
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
			position = {
				row = 1,
				col = "50%",
			},
			format = {
				cmdline = { icon = " " },
				search_down = { icon = "󰁈 " },
				search_up = { icon = " " },
				filter = { icon = "󰈲 " },
				help = { icon = "󰾚 " },
				input = { icon = "󱡫 " },
				lua = { icon = " " },
			},
		},
		messages = {
			enabled = false,
			view = "notify",
			view_error = "notify",
			view_warn = "notify",
			view_history = "messages",
			view_search = "virtualtext",
		},
	})
end

return M
