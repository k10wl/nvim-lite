local function client_supports_method(client, method, bufnr)
    if vim.fn.has 'nvim-0.11' == 1 then
        return client:supports_method(method, bufnr)
    else
        return client.supports_method(method, { bufnr = bufnr })
    end
end

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("k10wl-lsp-attach", { clear = true }),
    callback = function(attachEvent)
        local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, {
                buffer = attachEvent.buf, desc = "LSP: " .. desc
            })
        end

        map("grd", vim.lsp.buf.definition, "[G]oto [D]efinition")
        map("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
        map("gl", vim.diagnostic.open_float, "Open float")

        local client = vim.lsp.get_client_by_id(attachEvent.data.client_id)
        if not client or
            not client_supports_method(
                client,
                vim.lsp.protocol.Methods.textDocument_documentHighlight,
                attachEvent.buf
            ) then
            return
        end

        local highlight_augroup = vim.api.nvim_create_augroup(
            'k10wl-lsp-highlight',
            { clear = false }
        )
        vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = attachEvent.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.document_highlight
        })

        vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = attachEvent.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.clear_references
        })

        vim.api.nvim_create_autocmd("LspDetach", {
            group = vim.api.nvim_create_augroup(
                'k10wl-lsp-detach', { clear = true }
            ),
            callback = function(detachEvent)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds({
                    group = 'k10wl-lsp-highlight', buffer = detachEvent.buf
                })
            end,
        })
    end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

local servers = {
    lua_ls = {}, -- makes sure that the lua language server is installed
}

require("mason").setup()

local ensure_installed = vim.tbl_keys(servers or {})
vim.list_extend(ensure_installed, {})
require("mason-tool-installer").setup { ensure_installed = ensure_installed }

require("mason-lspconfig").setup {
    automatic_enable = true,
    automatic_installation = ensure_installed,
    ensure_installed = ensure_installed,
    handlers = {
        function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend(
                "force", {}, capabilities, server.capabilities or {}
            )
            require("lspconfig")[server_name].setup(server)
        end,
    },
}
