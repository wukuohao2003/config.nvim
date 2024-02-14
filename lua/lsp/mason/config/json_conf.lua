local M = {}

function M.JsonLSP()
	require("lspconfig").jsonls.setup({})
end

return M
