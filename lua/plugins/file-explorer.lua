return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = false } },
				},
			},
		})

		vim.keymap.set({ "n", "i" }, "<D-E>", ":Neotree<CR>", { silent = true })
	end,
}
