local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' ' 

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap('n', "<leader>cfg", ":Telescope file_browser path=~/.config/nvim <CR>", opts)
keymap('n', "<leader>l", ":Lazy<CR>", opts)
keymap("n", "<S-l>", "gt", opts)
keymap("n", "<S-h>", "gT", opts)


