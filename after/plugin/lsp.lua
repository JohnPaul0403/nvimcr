local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- Attach default keymaps when an LSP server connects to a buffer
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- 1. Setup Mason - the package manager
require('mason').setup({})

-- 2. Setup the bridge between Mason and nvim-lspconfig
require('mason-lspconfig').setup({
	-- List the LSP servers you want Mason to automatically install
	ensure_installed = {'lua_ls', 'rust_analyzer', 'pyright'},

	handlers = {
		-- This default handler sets up servers with basic config
		lsp_zero.default_setup,
		-- You can add custom handlers for specific servers here
		lua_ls = function()
			local lua_opts = lsp_zero.nvim_lua_ls()
			require('lspconfig').lua_ls.setup(lua_opts)
		end,
	},
})
