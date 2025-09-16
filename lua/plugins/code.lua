return {
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
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
