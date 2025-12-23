require("config.lazy")
require("lsp")

-- General settings
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.swapfile = false

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Keymaps
vim.keymap.set("i", "jk", "<ESC>", { noremap = true })

vim.opt.colorcolumn = "80"

