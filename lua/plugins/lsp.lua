return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
    },

    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "tsserver",
                "lua_ls",
                "gopls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
                ["tsserver"] = function()
                    local lspconfig = require("lspconfig")
                    local function filter(arr, fn)
                        if type(arr) ~= "table" then
                            return arr
                        end

                        local filtered = {}
                        for k, v in pairs(arr) do
                            if fn(v, k, arr) then
                                table.insert(filtered, v)
                            end
                        end

                        return filtered
                    end

                    local function filterReactDTS(value)
                        return string.match(value.targetUri, 'react/index.d.ts') == nil
                    end
                    lspconfig.tsserver.setup {
                        capabilities = capabilities,
                        handlers = {
                            ['textDocument/definition'] = function(err, result, method, ...)
                                if vim.tbl_islist(result) and #result > 1 then
                                    local filtered_result = filter(result, filterReactDTS)
                                    return vim.lsp.handlers['textDocument/definition'](err, filtered_result, method, ...)
                                end

                                vim.lsp.handlers['textDocument/definition'](err, result, method, ...)
                            end
                        }
                    }
                end,
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
