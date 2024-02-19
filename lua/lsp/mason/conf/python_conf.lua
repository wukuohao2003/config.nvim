local M = {}

function M.PythonLSP()
	require("lspconfig").pyright.setup({})
end

return M
