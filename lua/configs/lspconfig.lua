require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "clangd",
  "basedpyright",
  "emmet_language_server",
  "bashls",
  "elsint-lsp",
  "tailwindcss-language-server",
  "postgrestools",
  "eslint",
  "taplo",
}
vim.lsp.enable(servers)
