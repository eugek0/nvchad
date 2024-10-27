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
    -- Интеграция с Discord
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      main_image = "file",
      auto_update = true,
      neovim_image_text = "Neovim",
      enable_line_number = true,
      file_assets = {
        jsx = { "React JS", "react" },
        tsx = { "React TS", "react" },
        scss = {
          "SCSS",
          "https://sass-lang.com/assets/img/styleguide/seal-color.png",
        },
      },
    },
  },

  {
    -- UI для гита в Nvim
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    -- Мультикурсор
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },

  {
    -- Оборот слов в скобки
    "machakann/vim-sandwich",
    event = "VeryLazy",
  },

  {
    -- Улучшенная подсветка JSX
    "neoclide/vim-jsx-improve",
    event = "VeryLazy",
  },

  {
    -- Подстсветка .ts .tsx файлов
    "HerringtonDarkholme/yats.vim",
    event = "VeryLazy",
  },

  {
    -- Emmet
    "mattn/emmet-vim",
    event = "VeryLazy",
  },

  {
    -- Подсветка цветов
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    opts = {
      render = "background",
      enable_named_colors = true,
    },
  },

  {
    -- px в rem
    "jsongerber/nvim-px-to-rem",
    event = "VeryLazy",
    opts = {
      root_font_size = 16,
      decimal_count = 4,
      show_virtual_text = true,
    },
  },

  {
    -- Подробная информация о репозитории
    "rbong/vim-flog",
    lazy = false,
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  {
    -- Различия в файлах гит
    "sindrets/diffview.nvim",
    lazy = false,
  },

  {
    -- Подсветка TODO
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup {
        keywords = {
          DELETE = { icon = "D", color = "warning", alt = { "DEL" } },
          MARK = { icon = "?", color = "mark", alt = { "M" } },
        },
        colors = {
          mark = { "Identifier", "#7C3" },
        },
      }
    end,
  },

  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
  },

  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    opts = {
      default_mappings = true, -- disable buffer local mapping created by this plugin
      default_commands = true, -- disable commands created by this plugin
      disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
      list_opener = "copen", -- command or function to open the conflicts list
      highlights = { -- They must have background color, otherwise the default color will be used
        incoming = "DiffAdd",
        current = "DiffText",
      },
    },
  },

  {
    -- Автокомплит кода от нейросети
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {
        enable_chat = true,
        virtual_text = {
          enabled = true,
          manual = false,
          filetypes = {},
          default_filetype_enabled = true,
          idle_delay = 75,
          virtual_text_priority = 65535,
          map_keys = true,
          accept_fallback = nil,
          key_bindings = {
            accept = "<M-c>",
            accept_word = false,
            accept_line = false,
            clear = false,
            next = "<M-]>",
            prev = "<M-[>",
          },
        },
      }
    end,
  },

  {
    "Eandrju/cellular-automaton.nvim",
    lazy = false,
  },

  {
    "f-person/git-blame.nvim",
    lazy = false,
  },

  -- To make a plugin not be loaded
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },

  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "tsx",
        "javascript",
        "typescript",
        "python",
        "c_sharp",
        "cpp",
        "bash",
      },
    },
  },
}
