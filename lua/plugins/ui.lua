return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				---@diagnostic disable-next-line: unused-local
				overrides = function(colors)
					return {
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
					}
				end,
			})
			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"stevearc/dressing.nvim",
		lazy = true,
		init = function()
			---@diagnostic disable-next-line: duplicate-set-field
			vim.ui.select = function(...)
				require("lazy").load({ plugins = { "dressing.nvim" } })
				return vim.ui.select(...)
			end
			---@diagnostic disable-next-line: duplicate-set-field
			vim.ui.input = function(...)
				require("lazy").load({ plugins = { "dressing.nvim" } })
				return vim.ui.input(...)
			end
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
		config = function()
			require("nvim-web-devicons").setup({
				strict = true,
				override_by_filename = {
					["firebase.json"] = {
						icon = "󰥧",
					},
					["firestore.rules"] = {
						icon = "󰥧",
					},
					["firestore.indexes.json"] = {
						icon = "󰥧",
					},
					["database.rules.json"] = {
						icon = "󰥧",
					},
					["storage.rules"] = {
						icon = "󰥧",
					},
				},
			})
		end,
	},
}
