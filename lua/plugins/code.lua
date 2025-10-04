return {
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      dofile(vim.g.base46_cache .. "defaults")
      dofile(vim.g.base46_cache .. "statusline")
      require("base46").load_all_highlights()

      require("todo-comments").setup()
    end,
    event = "BufReadPost",
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    opts = {},
    cmd = "Trouble",
  },

  {
    "Eandrju/cellular-automaton.nvim",
    event = "VeryLazy",
  },

  {
    "uga-rosa/translate.nvim",
    event = "VeryLazy",
    config = function()
      require("translate").setup {
        default = {
          output = "replace",
        },
      }
    end,
  },
}
