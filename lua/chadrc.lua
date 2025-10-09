-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.mason = {
  command = true,
  pkgs = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "prettierd",
    "eslint_d",
    "vtsls",
    "eslint-lsp",
    "rust-analyzer",
    "emmet-language-server",
    "clangd",
    "clang-format",
    "bash-language-server",
    "omnisharp",
    "basedpyright",
    "json-lsp",
    "tailwindcss-language-server",
    "postgrestools",
    "pgformatter",
    "taplo",
    "flake8",
    "autopep8",
  },
}

M.base46 = {
  theme = "gruvchad",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     "                                   ",
--     "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
--     "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
--     "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
--     "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
--     "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
--     "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
--     "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
--     " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
--     " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
--     "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
--     "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
--     "                                   ",
--     "         Powered By  eovim       ",
--     "                                   ",
--   },

M.nvdash = {
  load_on_startup = true,
  header = {
    "                                         /$$        /$$$$$$  ",
    "                                        | $$       /$$$_  $$ ",
    "  /$$$$$$  /$$   /$$  /$$$$$$   /$$$$$$ | $$   /$$| $$$$\\ $$ ",
    " /$$__  $$| $$  | $$ /$$__  $$ /$$__  $$| $$  /$$/| $$ $$ $$ ",
    "| $$$$$$$$| $$  | $$| $$  \\ $$| $$$$$$$$| $$$$$$/ | $$\\ $$$$ ",
    "| $$_____/| $$  | $$| $$  | $$| $$_____/| $$_  $$ | $$ \\ $$$ ",
    "|  $$$$$$$|  $$$$$$/|  $$$$$$$|  $$$$$$$| $$ \\  $$|  $$$$$$/ ",
    " \\_______/ \\______/  \\____  $$ \\_______/|__/  \\__/ \\______/  ",
    "                     /$$  \\ $$                               ",
    "                    |  $$$$$$/                               ",
    "                     \\______/                                ",
    "                                                             ",
    "                                               ",
    "              Powered By  vchad              ",
    "                                               ",
  },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}

M.ui = {
  tabufline = {
    lazyload = false,
  },
}

return M
