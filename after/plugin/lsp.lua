local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")
local cmp = require('cmp')

lsp.preset("recommended")

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
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

lspconfig.gopls.setup({
  on_attach = function()
    vim.cmd([[autocmd BufWritePre <buffer> :silent %!golines]])  -- format with gofmt
    vim.cmd([[autocmd BufWritePre <buffer> :silent %!gofumpt]])  -- format with gofmt
    vim.cmd([[autocmd BufWritePre <buffer> :silent %!goimports]])  -- format with goimports
    end,
})

lsp.setup()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

