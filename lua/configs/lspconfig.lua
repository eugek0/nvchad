require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "vtsls", "clangd", "pyright", "emmet_language_server", "bashls", "elsint-lsp" }
vim.lsp.enable(servers)
