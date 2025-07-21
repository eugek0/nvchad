require "nvchad.mappings"

local map = vim.keymap.set

-- Общее
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- Открытие параллельного окна
map("n", "\\", "<cmd>:vsplit<cr>", { desc = "Vertical split" })

-- Диагностика ошибок и предупреждений
map("n", "<leader>lf", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })

-- Поиск TODO тэгов
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todo" })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open Lazygit" })

-- Быстрый выход
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "Close" })

-- LSP
map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code action" })
map("n", "<leader>ld", function()
  vim.lsp.buf.definition()
end, { desc = "LSP source definition" })
map("n", "<leader>lr", function()
  vim.lsp.buf.references()
end, { desc = "LSP references" })

-- Перемещение строчек с помощью Alt
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Табуляция
map("v", ">", ">gv")
map("v", "<", "<gv")

-- Ненужная херь
map("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
