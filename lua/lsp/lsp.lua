local M = {}

local status, cmp = pcall(require, "cmp")

if not status then
	vim.notify("cmp is not found ...")
	return false
end

function M.Config()
	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<Tab>"] = cmp.mapping.select_next_item(),
			["<S-Tab>"] = cmp.mapping.select_prev_item(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
			-- { name = 'ultisnips' }, -- For ultisnips users.
			-- { name = 'snippy' }, -- For snippy users.
		}),
		formatting = {
			fields = {
				"abbr",
				"kind",
				"menu",
			},
			format = function(entry, vim_item)
				vim_item.kind = string.format("%s %s", require("lsp.kinds.kinds").kinds[vim_item.kind], vim_item.kind)
				vim_item.menu = ({
					nvim_lsp = "  [LSP]",
					luasnip = "   LuaSnip",
					buffer = "  [BUFFER]",
					path = "  [PATH]",
				})[entry.source.name]
				return vim_item
			end,
		},
		experimental = {
			ghost_text = true,
		},
	})

	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M
