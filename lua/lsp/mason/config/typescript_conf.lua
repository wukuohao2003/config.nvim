local M = {}

function M.TypeScriptLSP()
	require("lspconfig").tsserver.setup({})
end

return M
