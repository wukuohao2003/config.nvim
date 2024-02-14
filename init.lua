local modules = {
	{ moduleName = "config.commands", enabled = true },
	{ moduleName = "config.keymaps", enabled = true },
	{ moduleName = "config.settings", enabled = true },
	{ moduleName = "unit.package", enabled = true },
	{ moduleName = "unit.settings.icons", enabled = true },
	{ moduleName = "unit.settings.lualine", enabled = true },
	{ moduleName = "unit.settings.nvim-tree", enabled = true },
	{ moduleName = "unit.settings.tree-sitter", enabled = true },
	{ moduleName = "unit.settings.telescope", enabled = true },
	{ moduleName = "unit.settings.formatter", enabled = true },
	{ moduleName = "unit.settings.floaterm", enabled = true },
	{ moduleName = "unit.settings.transparent", enabled = true },
	{ moduleName = "unit.settings.notify", enabled = true },
	{ moduleName = "unit.settings.tundra", enabled = true },
	{ moduleName = "unit.settings.autopairs", enabled = true },
	{ moduleName = "lsp.mason.mason", enabled = true },
}

for _, unit in ipairs(modules) do
	if unit.enabled then
		require(unit.moduleName).Config()
	end
end
