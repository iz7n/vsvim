local map = function(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts or { noremap = true, silent = true })
end

local vscode_nmap = function(lhs, rhs)
	map({ "n", "v" }, lhs, rhs)
	map("i", lhs, "<Esc>" .. rhs .. "i")
end

vscode_nmap("<D-s>", ":w<CR>")
vscode_nmap("<D-w>", ":q<CR>")

vscode_nmap("<D-z>", "u")
map({ "n", "i", "v" }, "<D-Z>", "<C-r>")

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
map("n", "<S-Up>", "vk")
map("n", "<S-Down>", "vj")
map("n", "<S-Left>", "vh")
map("n", "<S-Right>", "vl")
map("i", "<S-Up>", "<Esc>vk")
map("i", "<S-Down>", "<Esc>vj")
map("i", "<S-Left>", "<Esc>vh")
map("i", "<S-Right>", "<Esc>vl")
map("v", "<S-Up>", "k")
map("v", "<S-Down>", "j")
map("v", "<S-Left>", "h")
map("v", "<S-Right>", "l")

-- Cmd + Shift + arrows
map({ "n", "i" }, "<D-S-Left>", "<Esc>v^")
map("v", "<D-S-Left>", "^")
map({ "n", "i" }, "<D-S-Right>", "<Esc>v$")
map("v", "<D-S-Right>", "$")
map({ "n", "i" }, "<D-S-Up>", "<Esc>vgg")
map("v", "<D-S-Up>", "gg")
map({ "n", "i" }, "<D-S-Down>", "<Esc>vG")
map("v", "<D-S-Down>", "G")

-- Copy & paste
map("v", "<D-c>", "y<Esc>i")
map("v", "<BS>", "d<Esc>i")
map({ "n", "v" }, "<C-v>", "pi")
map("i", "<C-v>", "<Esc>pi")

-- Option + arrows
map({ "n", "i" }, "<M-Up>", "<Esc>V:m '<-2<CR>gv=gv<Esc>i")
map({ "n", "i" }, "<M-Down>", "<Esc>V:m '>+1<CR>gv=gv<Esc>i")
map("v", "<M-Up>", ":m '<-2<CR>gv=gv")
map("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- Comments
map({ "n", "i" }, "<D-/>", "<Esc>gcci")
map("v", "<D-/>", "<Esc>gc")
