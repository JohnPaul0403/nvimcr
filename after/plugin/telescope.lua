local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({search = vim.fn.input('Grep > ')})
end, { desc = 'Telescope find files' })


vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = 'Telescope find commands' })

-- LSP pickers (optional - these will override default LSP keymaps)
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Telescope LSP definitions' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Telescope LSP references' })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'Telescope LSP implementations' })
vim.keymap.set('n', '<leader>D', builtin.lsp_type_definitions, { desc = 'Telescope LSP type definitions' })

-- Useful diagnostic pickers
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope document symbols' })
vim.keymap.set('n', '<leader>fS', builtin.lsp_workspace_symbols, { desc = 'Telescope workspace symbols' })
