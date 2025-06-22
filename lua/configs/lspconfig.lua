require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "clangd",
  "pyright",
  "emmet_language_server",
  "bashls",
  "gopls",
  "eslint-lsp",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
