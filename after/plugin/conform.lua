local conform = require("conform")
conform.setup({
    notify_on_error = false,
    format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
        end
        local disable_filetypes = { c = true }
        return {
            lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
    end,
    formatters_by_ft = {
        sql = { "sql-formatter" },
        c = { "clang-format" },
        lua = { "stylua" },
        go = { "golines", "gofmt" },
        css = { "eslint", "prettier", "prettierd" },
        javascript = { "eslint", "prettier", "prettierd" },
        typescript = { "eslint", "prettier", "prettierd" },
        typescriptreact = { "eslint", "prettier", "prettierd" },
    },
})

vim.api.nvim_create_user_command("FormatDisable", function(args)
    if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
    else
        vim.g.disable_autoformat = true
    end
end, {
    desc = "Disable autoformat-on-save",
    bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
end, {
    desc = "Re-enable autoformat-on-save",
})
