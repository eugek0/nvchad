return {
  {
    "neoclide/vim-jsx-improve",
    event = "VeryLazy",
  },

  {
    "dmmulroy/tsc.nvim",
    event = "VeryLazy",
    config = function()
      require("tsc").setup {
        use_trouble_qflist = true,
      }
    end,
  },

  {
    "HerringtonDarkholme/yats.vim",
    event = "VeryLazy",
  },

  {
    "mattn/emmet-vim",
    event = "VeryLazy",
  },

  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
  },
}
