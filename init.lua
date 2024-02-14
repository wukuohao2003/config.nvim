local modules = {
	{ moduleName = "config.commands", enabled = true },
	{ moduleName = "config.keymaps", enabled = true },
	{ moduleName = "config.settings", enabled = true },
	{ moduleName = "tool.package", enabled = true },
	{ moduleName = "tool.settings.icons", enabled = true },
	{ moduleName = "tool.settings.lualine", enabled = true },
	{ moduleName = "tool.settings.nvim-tree", enabled = true },
	{ moduleName = "tool.settings.tree-sitter", enabled = true },
	{ moduleName = "tool.settings.telescope", enabled = true },
	{ moduleName = "tool.settings.formatter", enabled = true },
	{ moduleName = "tool.settings.floaterm", enabled = true },
	{ moduleName = "tool.settings.transparent", enabled = true },
	{ moduleName = "tool.settings.notify", enabled = true },
	{ moduleName = "tool.settings.tundra", enabled = true },
	{ moduleName = "tool.settings.autopairs", enabled = true },
	{ moduleName = "lsp.mason.mason", enabled = true },
}

for _, tool in ipairs(modules) do
	if tool.enabled then
		require(tool.moduleName).Config()
	end
end
