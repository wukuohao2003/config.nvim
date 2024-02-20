local modules = {
	{ moduleName = "conf.commands", enabled = true },
	{ moduleName = "conf.keymaps", enabled = true },
	{ moduleName = "conf.settings", enabled = true },
	{ moduleName = "tool.package", enabled = true },
	{ moduleName = "tool.tool-list.icons", enabled = true },
	{ moduleName = "tool.tool-list.lualine", enabled = true },
	{ moduleName = "tool.tool-list.nvim-tree", enabled = true },
	{ moduleName = "tool.tool-list.tree-sitter", enabled = true },
	{ moduleName = "tool.tool-list.telescope", enabled = true },
	{ moduleName = "tool.tool-list.formatter", enabled = true },
	{ moduleName = "tool.tool-list.floaterm", enabled = true },
	{ moduleName = "tool.tool-list.transparent", enabled = true },
	{ moduleName = "tool.tool-list.notify", enabled = true },
	{ moduleName = "tool.tool-list.tundra", enabled = true },
	{ moduleName = "tool.tool-list.autopairs", enabled = true },
	{ moduleName = "tool.tool-list.commenter", enabled = true },
	{ moduleName = "lsp.mason.mason", enabled = true },
	{ moduleName = "lsp.lsp", enabled = true },
	{ moduleName = "lsp.snips.snips", enabled = true },
}

for _, tool in ipairs(modules) do
	if tool.enabled then
		require(tool.moduleName).Config()
	end
end
