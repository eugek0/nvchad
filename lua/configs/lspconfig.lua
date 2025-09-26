require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "vtsls",
  "clangd",
  "pyright",
  "emmet_language_server",
  "bashls",
  "elsint-lsp",
  "tailwindcss-language-server",
  "postgrestools",
  "taplo",
}
vim.lsp.enable(servers)
