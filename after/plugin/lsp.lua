local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")
local cmp = require('cmp')

lsp.preset("recommended")

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end , opts)
end)

lsp.ensure_installed({
  'tsserver',
  'tailwindcss',
  'eslint',
  'gopls',
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
  settings = {
    gopls = {
      analyses = {
        nilness = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
      },
      experimentalPostfixCompletions = true,
      gofumpt = true,
      staticcheck = true,
      usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      }
    },
  },
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
})

lsp.setup()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

