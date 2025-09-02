#!/usr/bin/env -S nvim -l

vim.env.LAZY_STDPATH = ".tests"
vim.env.LAZY_PATH = vim.fs.normalize("~/projects/lazy.nvim")

if vim.fn.isdirectory(vim.env.LAZY_PATH) == 1 then
  loadfile(vim.env.LAZY_PATH .. "/bootstrap.lua")()
else
  load(vim.fn.system("curl -s https://raw.githubusercontent.com/folke/lazy.nvim/main/bootstrap.lua"), "bootstrap.lua")()
end

-- Setup lazy.nvim
require("lazy.minit").setup({
  spec = {
    { dir = vim.uv.cwd() },
    { "LazyVim/starter" },
    { "nvim-treesitter/nvim-treesitter" },
    { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
    { "mason-org/mason.nvim", version = "^1.0.0" },
    { "nvim-mini/mini.icons", opts = {} },
  },
})
