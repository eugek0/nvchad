require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "\\", "<cmd>:vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>lf", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todo" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })
map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" })
