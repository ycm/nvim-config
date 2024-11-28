return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',
                    'clangd',
                    'pylsp',
                },
            })
        end,
    },
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')

            local function suppress_diagnostics(client)
                client.handlers['textDocument/publishDiagnostics'] = function() end
            end
            lspconfig.clangd.setup({
                capabilities = capabilities,
                on_attach = function(client, _)
                    suppress_diagnostics(client) -- Disable linting diagnostics
                end,
            })
            -- lspconfig.clangd.setup({})
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        format = {
                            enable = true,
                        },
                    },
                },
            })
            -- lspconfig.pylsp.setup({ capabilities = capabilities })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set(
                { 'n', 'v' },
                '<leader>ca',
                vim.lsp.buf.code_action,
                {}
            )
        end,
    },
}
