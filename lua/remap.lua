local map = function(mode, lhs, rhs)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, lhs, rhs, opts)
end

local vscode_nmap = function(lhs, rhs)
	map({ "n", "v" }, lhs, rhs)
	map("i", lhs, "<Esc>" .. rhs .. "i")
end

vscode_nmap("<D-s>", ":w<CR>")
vscode_nmap("<D-w>", ":wq<CR>")

vscode_nmap("<D-z>", "u")

map("n", "<BS>", "i<BS>")

-- Cmd + arrows
map({ "n", "i" }, "<D-Left>", "<Esc>I")
map("v", "<D-Left>", "^")
map({ "n", "i" }, "<D-Right>", "<Esc>A")
map("v", "<D-Right>", "$")
map({ "n", "i" }, "<D-Up>", "<Esc>ggi")
map("v", "<D-Up>", "gg")
map({ "n", "i" }, "<D-Down>", "<Esc>Gi")
map("v", "<D-Down>", "G")

-- Shift + arrows
map("n", "<S-Down>", "v<Down>")
map("n", "<S-Left>", "v<Left>")
map("n", "<S-Right>", "v<Right>")
map("v", "<S-Up>", "<Up>")
map("v", "<S-Down>", "<Down>")
map("v", "<S-Left>", "<Left>")
map("v", "<S-Right>", "<Right>")
map("i", "<S-Up>", "<Esc>v<Up>")
map("i", "<S-Down>", "<Esc>v<Down>")
map("i", "<S-Left>", "<Esc>v<Left>")
map("i", "<S-Right>", "<Esc>v<Right>")

-- Cmd + Shift + arrows
map({ "n", "i" }, "<D-S-Left>", "<Esc>v^")
map("v", "<D-S-Left>", "^")
map({ "n", "i" }, "<D-S-Right>", "<Esc>v$")
map("v", "<D-S-Right>", "$")
map({ "n", "i" }, "<D-S-Up>", "<Esc>vgg")
map("v", "<D-S-Up>", "gg")
map({ "n", "i" }, "<D-S-Down>", "<Esc>vG")
map("v", "<D-S-Down>", "G")

map("v", "<D-c>", "y<Esc>i")
map("v", "<BS>", "d<Esc>i")
map({ "n", "v" }, "<C-v>", "pi")
map("i", "<C-v>", "<Esc>pi")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
