require("nvchad.configs.lspconfig").defaults()

local cssls_opts = require "configs.lspconfig.cssls"
local tailwind_opts = require "configs.lspconfig.tailwindcss"

vim.lsp.config("cssls", cssls_opts)
vim.lsp.config("tailwindcss", tailwind_opts)

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "clangd",
  "basedpyright",
  "emmet_language_server",
  "bashls",
  "elsint-lsp",
  "tailwindcss",
  "postgres-language-server",
  "eslint",
  "taplo",
}
vim.lsp.enable(servers)
