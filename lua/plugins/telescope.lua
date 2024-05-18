return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            cond = function()
                return vim.fn.executable("make") == 1
            end,
        },
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })
        telescope.load_extension("fzf")
        telescope.load_extension("ui-select")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<D-p>", builtin.find_files)
        vim.keymap.set("v", "<D-f>", '"zy:Telescope live_grep default_text=<C-r>z<cr>')
    end,
}
