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
			working_sym = "󰑓",
			error_sym = "",
			done_sym = "󰩐",
			removed_sym = "-",
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

		-- code explanatory note
		use({
			"preservim/nerdcommenter",
		})

		-- file manage
		use({
			"nvim-tree/nvim-tree.lua",
			requires = {
				"nvim-tree/nvim-web-devicons",
			},
			tag = "nightly",
		})

		-- color scheme
		use({
			"sam4llis/nvim-tundra",
		})

		-- autpairs
		use({
			"windwp/nvim-autopairs",
		})

		-- status line
		use({
			"nvim-lualine/lualine.nvim",
			requires = {
				"nvim-tree/nvim-web-devicons",
				opt = true,
			},
		})

		-- code hllight
		use({
			"nvim-treesitter/nvim-treesitter",
		})

		-- telescope
		use({
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-lua/plenary.nvim",
				"p00f/nvim-ts-rainbow",
			},
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

		-- hidden command
		use({
			"folke/noice.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",
			},
		})

		if packer_bootstrap then
			require("packer").sync()
		end
	end)
end

return M
