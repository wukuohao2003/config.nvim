local status, lul = pcall(require, "lualine")
local M = {}

if not status then
	vim.notify("lualine is not found ...")
	return false
end

function M.Config()
	lul.setup({
		options = {
			icons_enabled = true,
			theme = "tundra",
			component_separators = { left = " ", right = " " },
			section_separators = { left = " ", right = "  " },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {
			lualine_a = {},
			lualine_b = {
				"branch",
				"diff",
				"filesize",
				{
					"filetype",
					icon = { align = "left" },
				},
			},
			lualine_c = { { "filename", path = 0 } },
			lualine_x = {
				{
					"diagnostics",
					sources = { "nvim_diagnostic", "coc" },
					sections = { "error", "warn", "info", "hint" },
					diagnostics_color = {
						error = "DiagnosticError",
						warn = "DiagnosticWarn",
						info = "DiagnosticInfo",
						hint = "DiagnosticHint",
					},
					symbols = { error = "  ", warn = "  ", info = " ", hint = "  " },
					colored = true,
					update_in_insert = true,
					always_visible = true,
				},
			},
			lualine_y = {
				"branch",
				"diff",
				"filesize",
				{
					"filetype",
					icon = { align = "right" },
				},
			},
			lualine_z = {},
		},
	})
end

return M
