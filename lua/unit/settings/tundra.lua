local M = {}
local status, tundra = pcall(require, "nvim-tundra")

if not status then
	vim.notify("tundra is not found ...")
	return false
end

function M.Config()
	tundra.setup({
		syntax = {
			booleans = { bold = true, italic = true },
			comments = { bold = true, italic = true },
			conditionals = { bold = true, italic = true },
			constants = { bold = true },
			fields = { italic = true },
			functions = { bold = true, italic = true },
			keywords = { italic = true },
			loops = { bold = true, italic = true },
			numbers = { bold = true },
			operators = { bold = true },
			punctuation = { bold = true },
			strings = { italic = true },
			types = { italic = true },
		},
		plugins = {
			lsp = true,
			semantic_tokens = true,
			treesitter = true,
			telescope = false,
			nvimtree = true,
			cmp = true,
			context = true,
			dbui = true,
			gitsigns = true,
			neogit = true,
			textfsm = true,
		},
	})
end

return M
