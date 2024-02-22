local M = {}
local status, atpairs = pcall(require, "nvim-autopairs")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

if not status then
	vim.notify("auto-pairs is not found ...")
	return false
end

function M.Config()
	atpairs.setup()
	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

return M
