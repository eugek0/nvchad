require "nvchad.options"

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.diagnostic.config { virtual_text = false }
  end,
})

local o = vim.o

o.relativenumber = true
