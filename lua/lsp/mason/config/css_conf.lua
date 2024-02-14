local M = {}

function M.CssLSP()
	require("lspconfig").cssls.setup({})
end

return M
