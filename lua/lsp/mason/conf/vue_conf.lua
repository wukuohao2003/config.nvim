local M = {}

function M.VueLSP()
	require("lspconfig").volar.setup({
		root_dir = function(path)
			return path
		end,
	})
end

return M
