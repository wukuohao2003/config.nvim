local M = {}
local status, ls = pcall(require, "luasnip")

if not status then
	vim.notify("luasnip is not found ...")
	return false
end

function M.Config()
	require("lsp.snips.conf.javascript_snip")
	require("lsp.snips.conf.typescript_conf")
	require("lsp.snips.conf.lua_snip")
	require("lsp.snips.conf.java_snip")
	require("lsp.snips.conf.python_snip")
end

return M
