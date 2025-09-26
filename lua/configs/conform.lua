local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd", "eslint_d" },
    scss = { "prettierd", "eslint_d" },
    html = { "prettierd", "eslint_d" },
    javascript = { "prettierd", "eslint_d" },
    typescript = { "prettierd", "eslint_d" },
    javascriptreact = { "prettierd", "eslint_d" },
    typescriptreact = { "prettierd", "eslint_d" },
    json = { "prettierd", "eslint_d" },
    sql = { "pgformatter" },
    toml = { "taplo" },
  },
}

return options
