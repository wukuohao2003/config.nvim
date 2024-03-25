local M = {}

function M.VueLSP()
	require("lspconfig").vuels.setup({})
end

return M
