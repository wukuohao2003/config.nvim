local M = {}

function M.Config()
	local ensure_packer = function()
		local fn = vim.fn
		local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
		if fn.empty(fn.glob(install_path)) > 0 then
			fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
			vim.cmd([[packadd packer.nvim]])
			return true
		end
		return false
	end

	local packer_bootstrap = ensure_packer()
	local status, packer = pcall(require, "packer")

	if not status then
		vim.notify("Packer is not found ...")
		return false
	end

	packer.init({
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded" })
			end,
			working_sym = "󱥸",
			error_sym = "",
			done_sym = "󰩐",
			removed_sym = "󰛌",
			moved_sym = "→",
			header_sym = "━",
		},
	})

	return packer.startup(function(use)
		-- package manage
		use({
			"wbthomason/packer.nvim",
		})

		-- float terminal
		use({
			"akinsho/toggleterm.nvim",
		})

		-- language server
		use({
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		})

		-- complete
		use({
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		})

		-- code explanatory note

		use({
			"numToStr/Comment.nvim",
		})

		-- file manage
		use({
			"nvim-tree/nvim-tree.lua",
			tag = "nightly",
		})

		-- color scheme
		use({
			"sam4llis/nvim-tundra",
		})

		use({
			"catppuccin/nvim",
		})

		-- autpairs
		use({
			"windwp/nvim-autopairs",
		})

		-- icons
		use({
			"nvim-tree/nvim-web-devicons",
		})

		-- status line
		use({
			"nvim-lualine/lualine.nvim",
			"WhoIsSethDaniel/lualine-lsp-progress.nvim",
		})

		-- code hllight
		use({
			"nvim-treesitter/nvim-treesitter",
		})

		-- telescope
		use({
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"p00f/nvim-ts-rainbow",
		})

		-- smooth scroll
		use({
			"psliwka/vim-smoothie",
		})

		-- code format
		use({
			"mhartington/formatter.nvim",
		})

		-- background transparent
		use({
			"xiyaowong/transparent.nvim",
		})

		-- noice ui
		use({
			"MunifTanjim/nui.nvim",
		})

		-- notify
		use({
			"rcarriga/nvim-notify",
		})

		-- prettier command
		use({
			"folke/noice.nvim",
		})

		if packer_bootstrap then
			require("packer").sync()
		end
	end)
end

return M
