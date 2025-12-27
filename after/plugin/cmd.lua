local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local luasnip = require('luasnip')

-- Load friendly snippets (optional)
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },      -- Suggestions from LSP
    { name = 'luasnip' },       -- Suggestions from snippets
    { name = 'buffer' },        -- Words from current buffer
    { name = 'path' },          -- File system paths
  }),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept selection
    ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion
    ['<C-e>'] = cmp.mapping.abort(), -- Close completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Confirm without selecting
  }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
