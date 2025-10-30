return {
  settings = {
    tailwindCSS = {
      includeLanguages = {
        typescript = "javascript",
        typescriptreact = "javascript",
        scss = "css",
      },
      experimental = {
        classRegex = {
          "clsx\\(([^)]*)\\)",
          "cva\\(([^)]*)\\)",
          "tw\\(([^)]*)\\)",
          "class\\(([^)]*)\\)",
        },
      },
      validate = true,
    },
  },
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
}
