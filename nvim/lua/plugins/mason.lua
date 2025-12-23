return {
    {
        "williamboman/mason.nvim",
        lazy = false,  -- load immediately
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,  -- load immediately
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "pyright",
                    "lua_ls",
                    "clangd",
                    "ts_ls",      
                    "html",
                    "cssls",
                    "eslint",
                    "emmet_ls",
                },
                automatic_installation = true,
            })
        end,
    },
}

