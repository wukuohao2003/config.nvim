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
			constants = { bold = true, italic = true },
			fields = { bold = true, italic = true },
			functions = { bold = true, italic = true },
			keywords = { bold = true, italic = true },
			loops = { bold = true, italic = true },
			numbers = { bold = true, italic = true },
			operators = { bold = true, italic = true },
			punctuation = { bold = true, italic = true },
			strings = { bold = true, italic = true },
			types = { bold = true, italic = true },
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
			chatgpt = true,
		},
	})
end

return M
