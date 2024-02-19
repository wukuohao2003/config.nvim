local M = {}

function M.EmmetLSP()
	require("lspconfig").emmet_ls.setup({})
end

return M
