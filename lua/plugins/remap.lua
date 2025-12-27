vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste without loosing the latest copy
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Tabs management
-- Switch to next tab
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window' })
