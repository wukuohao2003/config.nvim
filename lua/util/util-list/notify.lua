local status, notify = pcall(require, "noice")

local M = {}

if not status then
	vim.notify("notify is not found")
	return
end

function M.Config()
	require("notify").setup({
		background_colour = "#FF0000",
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
				cmdline = { icon = " " },
				search_down = { icon = "󰁈 " },
				search_up = { icon = " " },
				filter = { icon = "󰤶 " },
				help = { icon = "󰮥 " },
				input = { icon = "󰡁 " },
				lua = { icon = " " },
			},
		},
		messages = {
			enabled = true,
			view = "notify",
			view_error = "notify",
			view_warn = "notify",
			view_history = "notify",
			view_search = "virtualtext",
		},
		lsp = {
			progress = {
				enabled = true,
				format = "lsp_progress",
				format_done = "lsp_progress_done",
				throttle = 1000 / 30,
				view = "cmdline_popup",
			},
			message = {
				enabled = true,
				view = "notify",
				opts = {},
			},
		},
		presets = {
			bottom_search = false,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = true,
			lsp_doc_border = true,
		},
	})
end

return M
