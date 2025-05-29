require "nvchad.options"

-- add yours here!

local o = vim.o
o.relativenumber = true
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.diagnostic.config {
  virtual_text = {
    spacing = 4,
    severity = nil,
    prefix = "",
    format = function(diagnostic)
      local icons = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.INFO] = "",
        [vim.diagnostic.severity.HINT] = "󰌵",
      }
      local icon = icons[diagnostic.severity] or ""
      return string.format("%s %s", icon, diagnostic.message)
    end,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
}
