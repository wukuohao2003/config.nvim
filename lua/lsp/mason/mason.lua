local status, mason = pcall(require, "mason")
local M = {}

if not status then
	vim.notify("mason is not found ...")
	return false
end

function M.Config()
	mason.setup({
		ui = {
			border = "rounded",
			width = 0.6,
			height = 0.6,
			icons = {
				package_installed = "󰩐",
				package_pending = "",
				package_uninstalled = "󱒼",
			},
		},
	})

	require("lsp.mason.config.lua_conf").LuaLSP()
	require("lsp.mason.config.json_conf").JsonLSP()
	require("lsp.mason.config.clangd_conf").ClangdLSP()
	require("lsp.mason.config.css_conf").CssLSP()
	require("lsp.mason.config.emmet_conf").EmmetLSP()
	require("lsp.mason.config.html_conf").HtmlLSP()
	require("lsp.mason.config.python_conf").PythonLSP()
	require("lsp.mason.config.typescript_conf").TypeScriptLSP()
	require("lsp.mason.config.vue_conf").VueLSP()
end

return M
