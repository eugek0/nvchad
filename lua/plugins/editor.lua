return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "lewis6991/satellite.nvim",
    event = "VeryLazy",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function()
      require("notify").setup {
        stages = "slide",
        timeout = 3000,
        render = "wrapped-compact",
        background_colour = "#000000",
        minimum_width = 50,
        max_width = 75,
        fps = 60,
      }

      vim.notify = require "notify"
    end,
  },

  {
    "DaikyXendo/nvim-material-icon",
    event = "VeryLazy",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "prisma",
        "python",
        "rust",
        "c_sharp",
        "cpp",
        "bash",
        "sql",
      },
    },
  },

  {
    "gelguy/wilder.nvim",
    event = "VeryLazy",
    config = function()
      local wilder = require "wilder"
      wilder.setup { modes = { ":", "/", "?" } }
      wilder.set_option(
        "renderer",
        wilder.popupmenu_renderer {
          highlighter = wilder.basic_highlighter(),
          left = { " ", wilder.popupmenu_devicons() },
          right = { " ", wilder.popupmenu_scrollbar() },
        }
      )
    end,
  },

  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    version = false,
    config = function()
      require("mini.animate").setup()
    end,
  },
}
