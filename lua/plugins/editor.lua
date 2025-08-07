return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
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
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "rust",
        "c_sharp",
        "cpp",
        "bash",
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
        wilder.popupmenu_renderer(wilder.popupmenu_palette_theme {
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
          border = "rounded",
          max_height = "75%", -- max height of the palette
          min_height = 0, -- set to the same as 'max_height' for a fixed height window
          prompt_position = "top", -- 'top' or 'bottom' to set the location of the prompt
          reverse = 0, -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
        })
      )
    end,
  },
}
