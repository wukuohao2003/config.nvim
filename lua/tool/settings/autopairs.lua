local M = {}
local status, atpairs = pcall(require, "nvim-autopairs")

if not status then
	vim.notify("auto-pairs is not found ...")
	return false
end

function M.Config()
	atpairs.setup()
end

return M
