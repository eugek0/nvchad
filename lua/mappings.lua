require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "\\", "<cmd>:vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>ll", "<cmd>TroubleToggle<CR>", { desc = "Open trouble" })
map("n", "<leader>cc", "<cmd>Codeium Chat<CR>", { desc = "Open Codeium chat" })
map("n", "<leader>gl", "<cmd>Flog<CR>", { desc = "Git flog" })
map("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Preview Markdown File" })
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todo" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })
map("n", "<leader>tm", "<cmd>OrganizeImports<CR>", { desc = "Organize imports" })
map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" })
map("n", "<leader>lf", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>tf", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Float terminal" })

-- INFO: Git history
map("n", "<leader>gcf", "<cmd>DiffviewFileHistory<CR>", { desc = "Git file history" })
map("n", "<leader>gco", "<cmd>DiffviewOpen<CR>", { desc = "Git commit history" })
map("n", "<leader>gcc", "<cmd>DiffviewClose<CR>", { desc = "Git close commit history" })
map("n", "<leader>gct", "<cmd>DiffviewToggleFiles<CR>", { desc = "Git toggle file sidebar" })

-- INFO: Git conflicts
map("n", "<leader>gft", "<cmd>GitConflictChooseTheirs<CR>", { desc = "Choose theirs" })
map("n", "<leader>gfo", "<cmd>GitConflictChooseOurs<CR>", { desc = "Choose ours" })
map("n", "<leader>gfb", "<cmd>GitConflictChooseBoth<CR>", { desc = "hoose both" })
map("n", "<leader>gfn", "<cmd>GitConflictChooseNone<CR>", { desc = "Choose none" })
map("n", "[c", "<cmd>GitConflictNextConflict<CR>", { desc = "Next conflict" })
map("n", "]c", "<cmd>GitConflictPrevConflict<CR>", { desc = "Prev conflict" })
map("n", "<leader>fc", "<cmd>GitConflictListQf<CR>", { desc = "List conflicts" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
