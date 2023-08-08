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
  on_attach = function(_, bufrn)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufrn,
      command = "lua FormatGo()",
    })
    end,
})

function FormatGo()
  os.execute("golines -w " .. vim.fn.expand('%'))
  os.execute("gofumpt -w " .. vim.fn.expand('%'))
  os.execute("goimports -w " .. vim.fn.expand('%'))
  vim.cmd("edit!")
end

lsp.setup()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

