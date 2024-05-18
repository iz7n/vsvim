vim.keymap.set({ "n", "v" }, "<D-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<D-w>", ":wq<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<D-z>", "u")

vim.keymap.set("n", "<BS>", "i<BS>")

vim.keymap.set("n", "<S-Down>", "v<Down>")
vim.keymap.set("n", "<S-Left>", "v<Left>")
vim.keymap.set("n", "<S-Right>", "v<Right>")
vim.keymap.set("v", "<S-Up>", "<Up>")
vim.keymap.set("v", "<S-Down>", "<Down>")
vim.keymap.set("v", "<S-Left>", "<Left>")
vim.keymap.set("v", "<S-Right>", "<Right>")
vim.keymap.set("i", "<S-Up>", "<Esc>v<Up>")
vim.keymap.set("i", "<S-Down>", "<Esc>v<Down>")
vim.keymap.set("i", "<S-Left>", "<Esc>v<Left>")
vim.keymap.set("i", "<S-Right>", "<Esc>v<Right>")

vim.keymap.set("v", "<C-c>", "y<Esc>i")
vim.keymap.set("v", "<C-x>", "d<Esc>i")
vim.keymap.set({ "n", "v" }, "<C-v>", "pi")
vim.keymap.set("i", "<C-v>", "<Esc>pi")
