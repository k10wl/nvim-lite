local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  'tsserver',
  'tailwindcss',
  'eslint',
  'gopls',
  'luau_lsp',
})

lspconfig.eslint.setup({
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

lsp.setup()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

