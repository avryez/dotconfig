
local lspconfig = require("lspconfig")
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = ok and cmp_nvim_lsp.default_capabilities() or {}

-- Explicit setup for Lua LS
lspconfig.lua_ls.setup({
    capabilities = capabilities,
    root_dir = function() return vim.loop.cwd() end,  -- force cwd
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
        },
    },
    on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        local keymap = vim.keymap.set
        keymap("n", "gd", vim.lsp.buf.definition, opts)
        keymap("n", "K", vim.lsp.buf.hover, opts)
        keymap("n", "gr", vim.lsp.buf.references, opts)
        keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
        keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
})

-- Enable all other servers with default configs
vim.lsp.enable("pylsp")
vim.lsp.enable("clangd")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("eslint")
vim.lsp.enable("emmet_ls")

