local M = {}
local status, catppuccin = pcall(require, "catppuccin")

if not status then
	vim.notify(" is not found ...")
	return false
end

function M.Config()
	catppuccin.setup({
		flavour = "auto", -- latte, frappe, macchiato, mocha
		background = { -- :h background
			light = "latte",
			dark = "mocha",
		},
		transparent_background = false, -- disables setting the background color.
		show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
		term_colors = true,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
		no_underline = false,
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = { "italic" },
			functions = { "italic", "bold" },
			keywords = { "bold" },
			strings = { "italic" },
			variables = { "bold" },
			numbers = { "bold" },
			booleans = { "italic", "bold" },
			properties = { "italic" },
			types = { "bold" },
			operators = { "bold" },
		},
		color_overrides = {},
		custom_highlights = {},
		default_integrations = true,
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			mason = true,
			noice = true,
		},
	})
end

return M
